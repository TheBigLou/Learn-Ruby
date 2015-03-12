# This is a version of ex17 (copies one file to another) that is written much shorter and without all the text output.

# short:
# from_file, to_file = ARGV
# open(to_file, 'w').write(open(from_file).read)

# super-short:
open(ARGV[1], 'w').write(open(ARGV[0]).read)