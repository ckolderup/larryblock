# LarryBlock

## What This Is

Recently some people I know have suffered from harrassment on Twitter from
various groupies of one Twitter personality or another. 9 times out of 10, the
user is following a person the victim doesn't have any real overlapping social
circles with; one or more public figures who may or may not have instigated the
harrassment but nonetheless the fact that they are followed is a common shared
attribute among all the harrassers.

This bot runs on a web server somewhere, tied to a person's Twitter account, and
whenever someone follows or mentions them, it checks to see the following things:

1) Are they not currently being followed by the person running the bot on their account?
2) Do they follow any of a list of specific Twitter users?

If both conditions are met, the bot will block these users with extreme prejudice.

That's all!

## Heroku Deploy

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Note that after deploying to Heroku & configuring the variables,
you'll still need to go to the Dashboard for the app you created and "scale up"
your worker to "1x" dyno in order for the bot to actually run. If you've done that
successfully, your app will have a filled-in purple hexagon on your list of apps
instead of an empty lined hexagon. If anyone has any idea how to make Heroku
auto-scale a new app to 1 worker dyno without any human intervention, please let
me know!
