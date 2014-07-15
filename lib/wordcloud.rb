class Cloudy
	 attr_accessor :text

def initialize
	@text = nil
end

def cloud
	if $decision=="w"
	    @tweet_array = []
		  $tweets["statuses"].each do |tweet|
		  @text=tweet["text"]
		  @tweet_array << @text
		  end
	else
	end
	if $decision=="w"
		@county=0
		puts "Here is your word cloud!"
		words= @tweet_array.join(" ")
		words2= words.split(" ")
		frequencies= Hash.new(0)
		words2.each { |word| frequencies[word] +=1 }
		frequencies = frequencies.sort_by {|word, count| count }
		frequencies.reverse!
		frequencies.each do |name, count|
			@county+=1
   		if count >10
   			puts "#{@county}: #{name} #{count.to_s}"
   		end
		end
	end

end
end