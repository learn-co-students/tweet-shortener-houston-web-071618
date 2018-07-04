# Write your code here.
def dictionary
  dictionary= {
    "hello" => 'hi', 
    "to" => '2',
    "two" => '2', 
    "too"=> '2' ,
    "for" => '4' ,
    "four" => '4', 
    "be"=> 'b', 
    "you"=> 'u',
    "at"=> "@",
    "and"=> "&"
  }
end

#tweet_one="Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#tweet_two="OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
#tweet_three="I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#tweet_four="GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
#tweet_five="New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
#tweets= [tweet_one, tweet_two, tweet_three, tweet_four, tweet_five]

def word_substituter(tweet)
  tweet.split.collect do |word|  #split string into individual words and collect them
    if dictionary.keys.include?(word.downcase)  #only if words are all lowercase
      word=dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end

