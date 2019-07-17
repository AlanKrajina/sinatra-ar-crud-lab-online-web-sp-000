require 'pry'
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
<<<<<<< HEAD
  
  # new
=======

>>>>>>> ef0e29b8bb87f18079e190ca0e56096f48ae3e42
  get '/articles/new' do
    erb :new
  end
  
  # create
  post '/articles' do
    @article = Article.create(params)

<<<<<<< HEAD
  redirect "/articles/#{@article.id}"
=======
  redirect '/articles/:id'
>>>>>>> ef0e29b8bb87f18079e190ca0e56096f48ae3e42
  end
  
  # index
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  # show
  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
  
  # edit
  get '/articles/:id/edit' do
    @article = Article.find(params[:id])
    erb :edit
  end
  
  # update
  patch '/articles/:id' do
    @article = Article.find(params[:id])
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save
    erb :show
  end
  
  # destroy
  delete '/articles/:id/delete' do
    @article = Article.find(params[:id])
    @article.destroy
    erb  :delete
  end
end
