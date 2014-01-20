# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/IqTk8uO.jpg',
			title:   "This is a featured article about something that i don't like",
			summary: 'I am a summary about an article, from a really 
					  website about coffee and shit. Do you think I look pretty? 
					  I do. But I would say that would I.',
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/08ODLRo.png',
			title:   "I'm a new featured articles!",
			summary: 'I am a summary about an article, from a really 
					  website about coffee and shit. Do you think I look pretty? 
					  I do. But I would say that would I.',
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/IqTk8uO.jpg',
			title:   "This is a featured article about something",
			summary: 'I am a summary about an article, from a really 
					  website about coffee and shit. Do you think I look pretty? 
					  I do. But I would say that would I.',
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

FeaturedArticle.create(
			img_url: 'http://i.imgur.com/xEtx3Al.jpg',
			title:   "I'm another featured article about shit",
			summary: 'I am a summary about an article, from a really 
					  website about coffee and shit. Do you think I look pretty? 
					  I do. But I would say that would I.',
			url:      'http://www.sprudge.com',
			editors_comment: 'Hmmm this article likes itself',
			pubdate: '6 january 2014',
			source: 'sprudge.com'
	)

