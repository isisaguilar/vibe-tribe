User.create!([
  {name: "Tay", email: "tay@mail.com", password: "password"},
  {name: "Sterling", email: "sterling@mail.com", password: "password"},
  {name: "Murphy", email: "murphy@mail.com", password: "password"}
])

Post.create!([
  {user_id:2, blurb:"Manifesting Tips", blog:"Tip 1: Be grateful for what you already have...", image_url:"cool pic here", video_url:""},
  {user_id:4, blurb:"", blog:"", image_url:"cool vibes cat picture", video_url:""},
  {user_id:3, blurb:"Sending everyone positive vibes today!!", blog:"", image_url:"", video_url:""}
])

Comment.create!([
  {user_id:4, post_id:1, body:"great tips!!", image_url:"funny gif here"},
  {user_id:3, post_id:2, body:"sweet pic bro", image_url:""},
  {user_id:2, post_id:3, body:"light&love to you too", image_url:""},
  {user_id:3, post_id:1, body:"love this", image_url:"cool gif here"}
])

Board.create!([
  {user_id:2, name:"all the good vibes"},
  {user_id:4, name:"funny stuffs"},
  {user_id:3, name:"manifesting"},
  {user_id:3, name:"pics"},
  {user_id:2, name:"tarot"}
])

PostBoard.create!([
  {post_id: 3, board_id: 1},
  {post_id: 1, board_id: 3},
  {post_id: 3, board_id: 2},
  {post_id: 2, board_id: 4},
  {post_id: 1, board_id: 3},
  {post_id: 3, board_id: 1},
  {post_id: 2, board_id: 3},
  {post_id: 1, board_id: 4}
])