3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end
puts "3 topic created." 


10.times do |blog|
	Blog.create!(
		title: "My blog Post #{blog}",
		body: "Contrary to popular belief, 
		Lorem Ipsum is not simply random text. 
		It has roots in a piece of classical Latin 
		literature from 45 BC, making it over 2000 years old. 
		ichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, 
		looked up one of the more obscure Latin words, consectetur, 
		from a Lorem Ipsum passage, and going through the cites of the word in classical 
		literature, discovered the undoubtable source. Lorem Ipsum 
		comes from sections 1.10.32 and 1.10.33 of The Extremes of Good and Evil) by Cicero, 
		written in 45 BC. This book is a treatise on the theory of ethics, 
		very popular during the Renaissance. The first line of Lorem Ipsum 
		comes from a line in section 1.10.32.",
		topic_id: Topic.last.id
	)
end

puts "10 blogs post created."

5.times do |skill|
	Skill.create!(
		title: "My skill #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created."

8.times do |portfolio_item|
	OwnPortfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

1.times do |portfolio_item|
	OwnPortfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

puts "9 portfolio titles created."


3.times do |technologies|
	Technology.create!(
		name: "Technolohy #{technologies}",
		own_portfolio_id: OwnPortfolio.last.id
	)
end

puts "3 technologies created"