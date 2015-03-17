module Ex25 # was missing 5, or we could have changed Ex25 to Ex2 everywhere below

  # This function will break up words for us.
  def Ex25.break_words(stuff) #corrected break, added )
    words = stuff.split(' ')
    return words # corrected 'word' to 'words'
  end

  # Sorts the words.
  def Ex25.sort_words(words) # added _
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Ex25.print_first_word(words) # corrected to def
    word = words.shift # removed (1), changed to shift from pop
    puts word # corrected to 'word'
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(words) # change : to .
    word = words.pop
    puts word # put => puts
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end # ed => end

  # Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence) # closed ()
    words = Ex25.break_words(sentence) # sentence misspelled
    Ex25.print_first_word(words) # 'word' misspelled, added s to variable 'word'
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words) # not a fist word any more
    Ex25.print_last_word(words)
  end

end # we were missing this!

puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END
# needed to END correctly above

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6 # need a +
puts "This should be five: #{five}" # close bracket

def secret_formula(started)
  jelly_beans = started * 500 # beans not bens
  jars = jelly_beans / 1000
  crates = jars / 100 # multiple crate(s)
  return jelly_beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point) # missing a comma

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates." # close bracket

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)
Ex25.print_first_word(words) # words not wrds
Ex25.print_last_word(words) # missing (
Ex25.print_first_word(sorted_words) # sortED
Ex25.print_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence)
Ex25.print_first_and_last(sentence)
Ex25.print_first_and_last_sorted(sentence)
