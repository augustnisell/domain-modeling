-- As a user, I want to create time-stamped posts of tacos, so that I can share them in a "feed" for the world to see.
-- As a user, I want to be able to "like" another user's post, so the author of the post and others will know that I liked it.
-- As a user, I want to be able to see how many likes a post has, so I can see how popular it is.
-- As a user, I want to not be able to like a post more than once, so I cannot artificially inflate the popularity of a post.
-- As a user, I want to be able to comment (and see other's comments) on a post, so I can engage in conversation with the author and others.
-- As a user, I want to be able to "follow" another user, so that I can stay up-to-date on certain users' updates.
-- As a user, I want to see only my followed users' posts in my feed, so I can only see posts that I'm interested in.
-- As a user, I want to sign up with my username (screen name), real name, and location, so that other people will see that information when visiting my profile.

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  real_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  image_url TEXT,
  caption TEXT,
  posted_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  liked_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  content TEXT,
  commented_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER,
  followee_user_id INTEGER,
  followed_at DATETIME DEFAULT CURRENT_TIMESTAMP
);