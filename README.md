# Vagabond - [Live Link](https://immense-taiga-88650.herokuapp.com/)

<img src="https://cloud.githubusercontent.com/assets/7833470/10423298/ea833a68-7079-11e5-84f8-0a925ab96893.png" width="100">

## Vagabond Travel App

<i> Full Stack App built for our WDI Group Project </i>

Vagabond is a simple way for users to share tips (AKA posts) about their favorite locations around the world.

Users will be able to create a profile, make new posts and view a record of their travels.


Feel free to fork / star / watch for your own personal use.

See the published project at [immense-taiga-88650.herokuapp.com](https://immense-taiga-88650.herokuapp.com/)!

#Entity-Relationship Diagram
<img src="http://i.imgur.com/VJQIu2D.png" width="800">


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
def activity_count
  activity_counter = {}
  self.posts.each do |p|
    p.activities.each do |a|
      if activity_counter.has_key?(a.name)
        activity_counter[a.name] += 1
      else
        activity_counter[a.name] = 1
      end
    end
  end
  activity_counter
end
```

## Screen Shots
<img src="http://i.imgur.com/tS1Lsuo.jpg" width="600">
<hr>
<img src="http://i.imgur.com/j9GVwR7.png" width="600">
<hr>
<img src="http://i.imgur.com/ReJXa7Q.png" width="600">

### Contributors
[Ricardo Arellano](https://github.com/ricarellano), [Zach Cusimano](https://github.com/c00z) & [Ryan Johnson](https://github.com/johnson-rl)
