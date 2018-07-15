def dictionary
  words = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
 }
end

def word_substituter(phrase)
  tweet = phrase.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
end
end

def selective_tweet_shortener(direct)
  if direct.length > 140
    word_substituter(direct)
    else
      direct
    end
  end

  def shortened_tweet_truncator(tweets)
    if word_substituter(tweets).length > 140
      word_substituter(tweets)[0..136] + ("...")
    else
      word_substituter(tweets)
    end
  end
