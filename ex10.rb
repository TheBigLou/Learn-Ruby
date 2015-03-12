tabby_cat = "\tI'm tabbed in." # \t creates a tab
persian_cat = "I'm split\non a line."  # \n creates a new line
backslash_cat = "I'm \\ a \\ cat." # \\ creates the \ character in the string

# Here we show use of triple quotes to do multi-line string entry, also how you can use \ escape sequences inside of that to create a new line.
fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
""" # """ is used normally, especially if you need to call or define #{} or %{}, while ''' would simply pass those through as the string itself

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat