require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @fav_links = ['www.a.com', 'www.b.com', 'www.c.com', 'www.d.com', 'www.e.com']
  erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
