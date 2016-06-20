# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

resources = Resource.create(
    [{
      title: 'Visualmess',
      description: 'Guide to creating understandable and attractive designs',
      url: 'http://www.visualmess.com'
      },
    {
      title: 'Rubular',
      description: 'Ruby regular expression editor.',
      url: 'http://rubular.com'
      },
    {
      title: 'Railstutorial',
      description: 'Ruby on Rails tutorial screencasts.',
      url: 'http://ruby.railstutorial.org'
      }])

user = User.create!(
  :email => 'jane@example.com',
  :password => 'letmeinplease',
  :password_confirmation => 'letmeinplease'
  )
