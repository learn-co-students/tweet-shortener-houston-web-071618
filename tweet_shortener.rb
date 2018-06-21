def dictionary
  dictionary = {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&",
    "for": "4"
  }
end

def word_substituter(string_tweet)
  string_tweet = string_tweet.split(" ")
  short = []

  string_tweet.each do |word|
    if dictionary[word.downcase.to_sym]
      short << dictionary[word.downcase.to_sym]
    else
      short << word
    end
  end

  short.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? bulk_tweet_shortener([tweet]) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..139] : tweet
end
