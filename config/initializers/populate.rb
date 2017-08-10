# 350.times do |i|
# 	user = User.create({
# 		first_name: Faker::Name.unique.first_name,
# 		last_name:  Faker::Name.last_name,
# 		email:			Faker::Internet.email
# 	})

# 	rand(1..3).times do
# 		post = Post.create({
# 			user_id: user.id,
# 	  	title: Faker::Name.title,
# 	  	body:  Faker::Lorem.paragraph(12, false, 5),
# 	  	interactions: {
# 	  		likes:  	 Faker::Number.between(1, 250),
# 	  		hearts: 	 Faker::Number.between(1, 100),
# 	  		dislikes: Faker::Number.between(0, 30)
# 	  	}
# 	  })
# 	end
# end

# users = User.all

# Post.all.each do |post|
# 	rand(15..30).times do
# 		comment_owner = users[rand(1..350)]
# 		replier       = users[rand(1..350)]

# 		if comment_owner && replier
# 			comment = post.comments.create({
# 				user_id: comment_owner._id,
# 				message: Faker::Lorem.paragraph(5, false, 2),
# 				interactions: {
# 		  		likes:  	 Faker::Number.between(1, 50),
# 		  		hearts: 	 Faker::Number.between(1, 30),
# 		  		dislikes:  Faker::Number.between(0, 10)
# 		  	}
# 			})

# 			rand(0..2).times do
# 				comment.replies.create({
# 					user_id: replier._id,
# 					message: Faker::Lorem.sentence
# 				})
# 			end

# 			comment_preview = post.comment_previews.create({
# 				user_id: comment_owner._id,
# 				comment_id: comment.id,
# 				message: Faker::Lorem.sentence + ".."
# 			})
# 		end
# 	end
# end