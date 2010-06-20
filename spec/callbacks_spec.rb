require File.dirname(__FILE__) + '/spec_helper'
require 'machinist/active_record'
require 'ostruct'
require 'sham'
require 'faker'

describe 'machinist blueprints' do

  before :all do
    Sham.name { Faker::Name.name }
    Sham.title { Faker::Lorem.sentence }
  end

  describe 'without callbacks' do

    it "should not obstruct standard machinist behavior" do

      Movie.blueprint do
        title
        year 2001
        director
      end

      Director.blueprint do
        name
      end

      movie = Movie.make
      movie.title.should be_a(String)
      movie.year.should == 2001
      movie.director.should be_a(Director)
      movie.director.name.should be_a(String)

    end

  end

  describe "before_make" do

    before :each do

      Movie.blueprint do
        title
        year 2001
        before_make do
          if director
            self.producer = Producer.make(:name => director.name)
          end
        end
      end

      Director.blueprint do
        name
      end

      Producer.blueprint do
        name
      end

    end

    it "should allow to configure a freshly made record" do
      movie = Movie.make(:director => Director.make(:name => "director name"))
      movie.producer.name.should == 'director name'
    end

    it "should work with make_unsaved" do
      movie = Movie.make_unsaved(:director => Director.make_unsaved(:name => "director name"))
      movie.should be_new_record
      movie.producer.name.should == 'director name'
      movie.producer.should be_new_record
    end

  end

  describe "after_make" do

    before :each do

      Movie.blueprint do
        title
        year 2001
      end

      Director.blueprint do
        name
        after_make do
          movies << Movie.make(:director => self)
        end
      end

    end

    it "should run the callback after saving" do
      director = Director.make
      director.should_not be_new_record
      director.movies.size.should == 1
      director.movies[0].director.should == director
      director.movies[0].should_not be_new_record
    end

    it "should work with make_unsaved" do
      director = Director.make_unsaved
      director.should be_new_record
      director.movies.size.should == 1
      director.movies[0].director.should == director
      director.movies[0].should be_new_record
    end

  end

end

