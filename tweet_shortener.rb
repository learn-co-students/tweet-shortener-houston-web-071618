# Write your code here.

def dictionary(word)
  dictionary={
    "hello": "hi",
    "to":"2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
  }
  dictionary.each do |key, value|
    if word == key.to_s || word == key.to_s.capitalize
      return value
    end
  end
  word
end
  
def word_substituter(tweet)
  array_of_tweet= tweet.split
  new_tweet =[];
  array_of_tweet.each do |tweet_word|
    new_word = dictionary(tweet_word)
    new_tweet.push(new_word)
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(statemant)
  statemant.each do |one_tweet|
    puts word_substituter(one_tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
    if tweet.length >140
      shortened_tweet = word_substituter(tweet)
      if shortened_tweet.length>140
        return shortened_tweet[0..136].concat("...")
      else
        return shortened_tweet
      end
    
    end
  tweet
  
end
