class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  #Get all users
  get "/users" do
    users=User.all
    users.to_json(include: :posts)
  end
  
  #Get a specific user
  get '/users/:id' do
    user=User.find(params[:id])
    user.to_json(include: :posts)
  end

  #Get all posts
  get '/posts' do
    posts=Posts.all
    posts.to_json
  end

  #Get user specific posts
  get '/users/:id/posts' do
    posts=Post.where(user_id: params[:id])
    posts.to_json
  end

  #Get all comments
  get '/comments' do
    comments=Comment.all
    comments.to_json
  end

  #Get user specific comments
  get '/users/:id/comments' do
  user=User.find(params[:id])
  user_post=Post.find_by(user_id: user.id)
  comment=Comment.where(id: user_post.comment_id)
  comment.to_json
  end

  post '/users' do
    user=User.create(
      user_name: params[:user_name],
      profile_img_url: params[:profile_img_url]      
    )
  end


end
