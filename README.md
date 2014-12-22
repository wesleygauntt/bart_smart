# Simple Hacker News Clone

## Learning Competencies

* Use the MVC pattern in web applications with proper allocation of code and
  responsibilities to each layer
* Implement CRUD in an MVC application


## Summary

We're going to practice our RESTful routes and CRUD operataions by building a simplified [Hacker News][] clone in Sinatra.

### Requirements

In this simple version, we will focus only on posts and votes (no comments)
Here are a few user stories:

* A guest (non logged in user) can create / edit / delete a post
* A guest can see all posts
* A guest can vote on a post (up or down)

### Stretch Requirements
* Only a logged in user can create a post or vote on a post
* A logged in user can view / edit / delete any post they have created
* A logged in user can see all the posts they have voted on
* A guest can see all posts and votes but cannot create a post or vote on a post


## Releases

### Release 0: Posts

Create the post model, controller and views.  You are recreating Hacker News so the view should be a single view page (`index.html`) - with partials as needed.

Give some thought to your controller routes before creating them. Consider
following the RESTful routing convention instead of coming up with your own
convention. Here are some routes to get you thinking in a RESTful way:


|                             | HTTP Verb | URL                 |
|-----------------------------|-----------|---------------------|
| View all posts              | GET       | /posts              |
| View a single post          | GET       | /posts/:id          |
| Vote on a post              | POST      | /posts/:id/votes    |


### Release 1: Votes

Add the ability to up and down vote a post

### Release 2: Users

Add the ability for a user to log in.  Only allow logged in users to create posts and vote on posts.

### Release 3: Comments (stretch)

Now that you have a simple version working it's time to add in comments.

* A user can comment on any post.
* A user can edit / delete any comment they have made
* A user can vote on any comment.

## Resources

* [Hacker News][] -- *protip: don't read the comments on social issue posts*


[Hacker News]: http://news.ycombinator.com
