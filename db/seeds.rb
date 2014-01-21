# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



FeaturedArticle.create(
			img_url: 'http://i.imgur.com/xrkPfnJ.jpg',
			title:   "01 This is a featured article about something that i don't like",
			summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
					  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
					  when an unknown printer took a galley of type and scrambled it to make a 
					  type specimen book. It has survived not only five centuries, but also the leap 
					  into electronic typesetting, remaining essentially unchanged. It was popularised 
					  in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
					  and more recently with desktop publishing 
					  software like Aldus PageMaker including versions of Lorem Ipsum.",
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/08ODLRo.png',
			title:   "02 I'm a new featured articles!",
			summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
					  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
					  when an unknown printer took a galley of type and scrambled it to make a 
					  type specimen book. It has survived not only five centuries, but also the leap 
					  into electronic typesetting, remaining essentially unchanged. It was popularised 
					  in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
					  and more recently with desktop publishing 
					  software like Aldus PageMaker including versions of Lorem Ipsum.",
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/xrkPfnJ.jpg',
			title:   "03 This is a featured article about something",
			summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
					  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
					  when an unknown printer took a galley of type and scrambled it to make a 
					  type specimen book. It has survived not only five centuries, but also the leap 
					  into electronic typesetting, remaining essentially unchanged. It was popularised 
					  in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
					  and more recently with desktop publishing 
					  software like Aldus PageMaker including versions of Lorem Ipsum.",
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/08ODLRo.png',
			title:   "I'm another featured article about shit",
			summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
					  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
					  when an unknown printer took a galley of type and scrambled it to make a 
					  type specimen book. It has survived not only five centuries, but also the leap 
					  into electronic typesetting, remaining essentially unchanged. It was popularised 
					  in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
					  and more recently with desktop publishing 
					  software like Aldus PageMaker including versions of Lorem Ipsum.",
			url:      'http://www.sprudge.com',
			editors_comment: 'I am an editors comment',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

