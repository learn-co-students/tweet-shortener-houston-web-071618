# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  #Convert string to array
  word_array = string.split(" ")

  hash1 = dictionary
  key_array = hash1.keys

  new_array = []

  word_array.each do |word|
    check_word = word
    
    key_array.each do |key_match|
       if word.downcase == key_match.downcase
         temp = word
         check_word = hash1[key_match]
       end #if
    end #key_array.each do
    
    new_array << check_word
    
 end #word_array.each do
 
 return_string = new_array.join(" ") 
 return_string
  
end #word_substituter


def bulk_tweet_shortener(tweet_array)
  new_array = []
  i = 0
  
   tweet_array.each do |tweets|
       temp_array = word_substituter(tweets)
       new_array[i] = temp_array
       puts "#{new_array[i]}"
       i+=1 
   end #tweet_array
  new_array 
  
end # bulk_tweet_shortener


def selective_tweet_shortener(tweet)
  return_string = ""
  length = tweet.size
  #puts "tweet is #{length} characters long."
  if length > 140
    return_string = word_substituter(tweet)
  else
    return_string = tweet
  end
  return_string  
  
end # selective_tweet_shortener

def shortened_tweet_truncator(tweet)
  length = tweet.size

  if length > 140
    new_string = tweet[0..136]
    new_string = new_string + "..."
  else
    new_string = tweet
  end
  new_string  
end