require 'rails_helper'
RSpec.describe MoviesController, type: :controller do

describe "POST movies#create Delete movies#destroy" do
it "should create a new movie and destroy it" do
#redirect_to '/movies/new'
post :create, :movie => { :title => "Any Name1", :rating => "G", :director => "Director name1", :release_date => "2/2/1992" }
post :create, :movie => { :title => "Any Name2", :rating => "G", :director => "Director name2", :release_date => "2/2/1992" }
expect(Movie.where(:title => "Any Name1")).to exist
@movie = Movie.find_by_title("Any Name1")
delete :destroy, :id => @movie[:id]

expect(Movie.find_by_title("Any Name1")).to be nil
expect(Movie.where(:title => "Any Name2")).to exist

end
end