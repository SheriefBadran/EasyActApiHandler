# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# test@test.se: testpassword
# admin@test.se: adminpassword

user = User.create!({
                       id: 1, email: 'test@test.se',
                       password: 'testpassword',
                       api_key: 'da3bebae-b6a1-4333-9835-b4d94387b1b1',
                       admin: 'false'
                   })

admin = User.create!({
                        id: 2, email: 'admin@test.se',
                        password: 'adminpassword',
                        api_key: '9864e2f2-212c-4984-8580-fdd6f6a00b95',
                        admin: 'true'
                    })
user.save
admin.save