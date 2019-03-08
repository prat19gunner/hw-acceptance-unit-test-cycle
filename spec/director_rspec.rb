require 'rails_helper'
RSpec.describe MoviesController, type: :controller do

    describe "POST movies#create Delete movies#destroy" do
      it "should create a new movie and destroy it" do
        #redirect_to '/movies/new'
        post :create, :movie => { :title => "Captain Marvel", :rating => "PG-13", :director => "Anna Boden", :release_date => "3/8/2019" }
        expect(Movie.where(:title => "Captain Marvel")).to exist
        @movie = Movie.find_by_title("Captain Marvel")
        
        delete :destroy, :id => @movie[:id]
        expect(Movie.find_by_title("Captain Marvel")).to be nil
      end
    end
end