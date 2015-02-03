# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({
                       id: 1, email: 'test@test.se',
                       encrypted_password: '$2a$10$rH/2PggB22Z/Cn773sqwgeeydP9z06yJnts48HhKdWeHOZwwsG6mO',
                       api_key: 'da3bebae-b6a1-4333-9835-b4d94387b1b1',
                       admin: 'false'
                   })

admin = User.create({
                        id: 2, email: 'admin@test.se',
                        encrypted_password: '$2a$10$D/1ZqV28qKVDFwAWqy/HQOI5RnmoDbla47nVPtd/7y4.L5ssMFoYi',
                        api_key: '9864e2f2-212c-4984-8580-fdd6f6a00b95',
                        admin: 'true'
                    })

user1 = User.create({
                        id: 3, email: 'test1@test.com',
                        encrypted_password: '$2a$10$LTASvEeiYQcwrpvgshxjd.cYdnF9YqTKA69gDkhOisKRjK/ydzHsG',
                        api_key: '12893c9b-b841-469a-b834-cdd87c404faf',
                        admin: 'false'
                    })

user2 = User.create({
                        id: 4, email: 'test2@test.com',
                        encrypted_password: '$2a$10$gvIGH3w/Ecdk..NDgAVMPugy2bkkv8ShD/bWQ9pzy5ulFHcx9hvOi',
                        api_key: '78297de2-be56-4d7c-a51a-f3f0de206acb',
                        admin: 'false'
                    })

user3 = User.create({
                        id: 5, email: 'test3@test.com',
                        encrypted_password: '$2a$10$rmy6slbuql73BI8sAvVoX.FPkV4rn6EPaInHC1xMuxLLGUs45Q.HO',
                        api_key: '36688209-247d-454f-b97a-411fdce073d2',
                        admin: 'false'
                    })