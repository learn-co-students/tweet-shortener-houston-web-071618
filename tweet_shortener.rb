require "pry"
# Write your code here.
tweets_hash = 
{
  "tweet_one" => "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "tweet_two" => "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "tweet_three" => "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",
  "tweet_four" => "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag",
  "tweet_five" => "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
}
tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"


def dictionary 
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary_hash
end


# # compare words in the tweet agains the keys by using .kets on dictionary_hash
# # if any matches replace the word in the tweet
# # convert tweet into array
# # iterate through each word
# # select and replace
# # convert back to string
# # return shortened string

def word_substituter(tweets)
  # assign var to keys and values to find match
  dictionary_k = dictionary.keys
  # dictionary_v = dictionary.values
  tweets = tweets.split
  new_tweets = ""
  new_tweets_arr = []
  tweets.each do | word |
    # puts word
    if dictionary_k.include?("#{word}") 
      # retrieve value of associated key
      word = dictionary["#{word}"]
    elsif 
      word
    end
    # new_tweets += "#{word} "
    new_tweets_arr << word
  end
  new_tweets = new_tweets_arr.join(" ")

end  
# word_substituter(tweet_one)

def bulk_tweet_shortener(t_hash)
# takes in the hash
# iterate and shorten - call the prev method
# and puts out results using puts method_name
  ans = ""
  t_hash.each do | tweet_num |
    # tweet_num.each do | num, val |
    # binding.pry
     ans = word_substituter("#{tweet_num}")
     puts ans
  # store return value of word_subsituter method in local var
  end
end
bulk_tweet_shortener(tweets_hash)

# def bulk_tweet_shortener(t_hash)
# # takes in the hash
# # iterate and shorten - call the prev method
# # and puts out results using puts method_name

#   t_hash.each do | tweet_num, tweet_data |
#     # for tweet_num or key need to access data not just key
#     tweet_data.each do | num, val |
#       # binding.pry
#       word_substituter("#{num}")
#   # store return value of word_subsituter method in local var
# # }
#     end
#   end
# end
# bulk_tweet_shortener(tweets_hash)


def selective_tweet_shortener(tweets)
# if tweet is longer than 140 char substitutes only substitutes 
# if not return original tweet
  if tweets.length > 140 
  tweets = tweets[0...131]
  elsif tweets.length < 140
  tweets
  end
end
selective_tweet_shortener(tweet_one)

# truncates the tweet to 140 char with (...)
def shortened_tweet_truncator(tweets)
  tweets_short = ""
    if tweets.length >=140 
    tweets_short = tweets[0...137] + "..."
  elsif tweets.length < 140 
    tweets
    end
end    
shortened_tweet_truncator(tweet_one)
