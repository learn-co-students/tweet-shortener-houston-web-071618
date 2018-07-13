def dictionary
  words_to_sub = {  "hello" => 'hi'
"to, two, too" => '2' 
"for, four" => '4'
'be' => 'b'
'you' => 'u'
"at" => "@" 
"and" => "&" }
end 

def word_substituter(tweet)
tweet_array = tweet.split(" ")
tweet_array.map do |word|
  replacements.each do |key, value|
    word = value if word.downcase == key
  end
  word
end.join(" ")