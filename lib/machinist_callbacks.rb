require 'machinist'
require 'machinist/active_record'


module Machinist
  class Lathe

    attr_reader :before_make_callback, :after_make_callback
    
    def before_make(&callback)
      append_callback(:before, callback)
    end

    def after_make(&callback)
      append_callback(:after, callback)
    end

    class << self

      def run_with_before_make(*args)
        lathe = run_without_before_make(*args)
        (lathe.object.instance_variable_get(:@before_make_callbacks) || []).each do |callback|
          lathe.object.instance_eval(&callback)
        end
        lathe
      end

      alias_method_chain :run, :before_make

    end

    private

    def append_callback(type, callback)
      variable = "@#{type}_make_callbacks"
      chain = object.instance_variable_get(variable) || []
      chain << callback
      object.instance_variable_set(variable, chain)
    end

  end
end


makers = []
makers << ActiveRecord::Associations::HasManyAssociation
makers << ActiveRecord::Base.send(ActiveRecord::Base.respond_to?(:singleton_class) ? :singleton_class : :metaclass)

makers.each do |maker|
  maker.send :define_method, :make_with_after_make do |*args|
    object = make_without_after_make(*args)
    (object.instance_variable_get(:@after_make_callbacks) || []).each do |callback|
      object.instance_eval(&callback)
    end
    object
  end
  maker.alias_method_chain :make, :after_make
end
