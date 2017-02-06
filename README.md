# Vagabond - [Live Link](https://google.com)

<img src="https://cloud.githubusercontent.com/assets/7833470/10423298/ea833a68-7079-11e5-84f8-0a925ab96893.png" width="100">

## Vagabond Travel App

<i> Full Stack App built for WDI's Project 1 </i>

Vagabond is a simple way for users to share tips (AKA posts) about their favorite locations around the world.

Feel free to fork / star / watch for your own personal use.

See the published project at [test.herokuapp.com](https://google.com/)!

#Entity-Relationship Diagram
<img src="http://i.imgur.com/VJQIu2D.png" width="600">


#Technologies Used   

####Languages:
HTML5, JavaScript, CSS, Ruby
####External Libraries:
jQuery, Materialize
####API's:
Google Maps API
####Frameworks:
Rails



## Code We're Proud Of
<hr>
Ricardo
<hr>
```ruby
def update
  post_id = params[:id]
  @post = Post.find(post_id)

  if @post.update_attributes(post_params)
    flash[:notice] = "Updated successfully."
    @location = Post.find_by_id(params[:id]).location
    redirect_to location_path(@location)
  else
    @post.errors.full_messages.each do |message|
      flash[:error] = message
    end
    redirect_to edit_post_path(@post)
  end
end
```
<hr>
Zach
<hr>
```ruby
def create
 user = User.new(user_params)
  if user.save
    login(user)
    redirect_to user
    UserMailer.welcome_email(user).deliver_now

 else
   @user.errors.full_messages.each do |message|
     flash[:error] = message
   end
   redirect_to new_user_path
  end
end
```
<hr>
RJ
<hr>
```ruby
def create

```

### Screen Shots
<img src="http://i.imgur.com/tS1Lsuo.jpg" width="600">
<img src="http://i.imgur.com/j9GVwR7.png" width="600">
<img src="http://i.imgur.com/ReJXa7Q.png" width="600">

### Contributors
[Ricardo Arellano](https://github.com/ricarellano), [Zach Cusimano](https://github.com/c00z) & [Ryan Johnson](https://github.com/johnson-rl)
