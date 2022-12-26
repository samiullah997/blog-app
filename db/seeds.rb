# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
authors = User.create([
    {name: 'Sami Khan', photo:'https://media-exp1.licdn.com/dms/image/D4D35AQFaDkOdfLLpAA/profile-framedphoto-shrink_400_400/0/1664187403199?e=1671120000&v=beta&t=m2BsdgIXIq-MJ2KC4MGCWDLFS9jgRQysTz0WND3uraQ', bio: 'Hi this is Samiullah full-stack software developer ', email: 'samiullah@gmail.com', password: 'samiullah', password_confirmation: 'samiullah', role: 'admin'},
    {name: 'Momanyi Hassan', photo: 'https://media-exp1.licdn.com/dms/image/D4D03AQH2iqU1XeNMQw/profile-displayphoto-shrink_400_400/0/1664574084004?e=1675900800&v=beta&t=ttd22TCnoVgsSJ1044GHjTEtM3cdLXw34kRBs9ztt7o', bio: 'Hi this is Hassan full-stack software developer', email: 'hassan@gmail.com', password: 'hassan', password_confirmation: 'hassan'},
    {name: 'Smith Caleen', photo: 'https://media-exp1.licdn.com/dms/image/D4D35AQGYW8yz5N2Vpw/profile-framedphoto-shrink_400_400/0/1665468982185?e=1671120000&v=beta&t=nUkb0WEzuEwfn00Q7oC_9wlWizXRVvrGEIUBIYIDENI', bio: 'Hi this is Smith full-stack software developer.', email: 'smith@gmail.com', password: 'smith1', password_confirmation: 'smith1'},
    {name: 'David Karn', photo: 'https://media-exp1.licdn.com/dms/image/D4E35AQGFSUKP1Lwasw/profile-framedphoto-shrink_400_400/0/1668545554918?e=1671120000&v=beta&t=BPNBQofLYNtOieW5q0hBPVqTBxcyXxYNU3-cRxXTZEk', bio: 'Hi this is David full-stack software developer.', email: 'david@gmail.com', password: 'david1', password_confirmation: 'david1'},
    {name: 'Petro Linus Mosk', photo: 'https://media-exp1.licdn.com/dms/image/C5603AQEWyscvRYS3pQ/profile-displayphoto-shrink_400_400/0/1633387075262?e=1675900800&v=beta&t=h4-lmGql75ZiwbHuI9GS5rZJWpUQlCm1K8VMeqhcwDE', bio: 'Hi this is Petro full-stack software developer.', email: 'petro@gmail.com', password: 'petro1', password_confirmation: 'petro1'},
    {name: 'Rashid Menhas', photo: 'https://media-exp1.licdn.com/dms/image/D5635AQGxPz0LkpzdVA/profile-framedphoto-shrink_400_400/0/1669796506068?e=1671120000&v=beta&t=G639_yP6iiDC63q-GkNfWeuOaRFCtHWK7Esh4p_oNyA', bio: 'Hi this is Rashid full-stack software developer', email: 'rashid@gmail.com', password: 'rashid', password_confirmation: 'rashid'},
    {name: 'Haadii', photo: 'https://media-exp1.licdn.com/dms/image/D4D35AQEPsn2T2iCX5A/profile-framedphoto-shrink_400_400/0/1664560764699?e=1671120000&v=beta&t=KOFT1TejWH231_AKCf-GtxuoJowLhkdd87ihEqtX9Eo', bio: 'Hi this is Haadi full-stack software developer', email: 'haadi@gmail.com', password: 'haadi1', password_confirmation: 'haadi1'}
  ])

  api_key = ApiKey.create
  
  posts = Post.create([
    {author_id: 1, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 2, title: 'The Empire Strikes Back', text: 'The Empire is back, we need to fight back'},
    {author_id: 3, title: 'The Force is strong with this one', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 4, title: 'The Force is strong with this one', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 5, title: 'The Force is strong with this one', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 6, title: 'The Force is strong with this one', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 7, title: 'The Force is strong with this one', text: 'We are close to destroying the Death Star, all rebels come full out'}
    ])
  
  comments = Comment.create([
    {author_id: 2, post_id: 1, text: 'Don\'t miss that hit'},
    {author_id: 3, post_id: 1, text: 'I am on it'},
    {author_id: 1, post_id: 7, text: 'Don\'t miss that hit'},
    {author_id: 5, post_id: 1, text: 'I am on it'},
    {author_id: 6, post_id: 7, text: 'Don\'t miss that hit'}
  ])
  
  likes = Like.create([
    {author_id: 1, post_id: 1},
    {author_id: 2, post_id: 1},
    {author_id: 3, post_id: 1},
    {author_id: 4, post_id: 1},
    {author_id: 5, post_id: 1},
    {author_id: 6, post_id: 1},
    {author_id: 7, post_id: 1},
    {author_id: 1, post_id: 2},
    {author_id: 2, post_id: 2},
    {author_id: 3, post_id: 2},
    {author_id: 4, post_id: 2},
    {author_id: 5, post_id: 2},
    {author_id: 6, post_id: 2},
  ])