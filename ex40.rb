class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
  
  def list_lines()
	@lyrics.each_with_index {|lyr, i| puts "#{i + 1}. #{lyr}"}
  end
end

# in the next two we are creating the lyrics as an array directly in the class function call
happy_bday = Song.new(["Happy birthday to you",
			"I don't want to get sued",
			"So I'll stop right there"])
			
bulls_on_parade = Song.new(["They rally around tha family",
			"With pockets full of shells"])

# while here first we define a variable with the array			
new_lyrics = ["When I find myself in times of trouble", "Mother Mary comes to me",
		"Speaking words of wisdom", "Let it be"]

# and then use it with the class .new function
let_it_be = Song.new(new_lyrics)

let_it_be.sing_me_a_song()
		
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

let_it_be.list_lines()