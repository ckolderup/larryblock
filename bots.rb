require 'twitter_ebooks'

class LarryBlock < Ebooks::Bot
  @@undesirables = ENV['ANYONE_FOLLOWING'].split(',')

  def configure
    self.consumer_key = ENV['TWITTER_CONSUMER_KEY']
    self.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  end

  def on_follow(user)
    name = user.screen_name
    unless @bot.twitter.friendship?(@bot.username, name)
      if @@undesirables.any? {|yuck| @bot.twitter.friendship?(name, yuck)}
        @bot.twitter.block(user)
      end
    end
  end

  def on_mention(tweet)
    name = tweet.user.screen_name
    unless @bot.twitter.friendship?(@bot.username, name)
      if @@undesirables.any? {|yuck| @bot.twitter.friendship?(name, yuck)}
        @bot.twitter.block(user)
      end
    end
  end
end

LarryBlock.new(ENV['TWITTER_USERNAME']) do |bot|
  bot.access_token = ENV['TWITTER_ACCESS_TOKEN']
  bot.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
end
