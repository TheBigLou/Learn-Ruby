module Dict
  def Dict.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets, with 256 being the default.
    aDict = [] # this creates the aDict variable that is an empty array
	# now we fill the array with num_buckets number of empty arrays
    (0...num_buckets).each do |i|
      aDict.push([])
    end
    # lastly return the value of aDict
    return aDict
  end
  
  def Dict.hash_key(aDict, key)
    # Given a key this will create a number and then convert it to an index for the aDict's buckets
	
	# as the 'key' argument gets parsed as a string, .hash converts it to a number - for our purposes it's effectively arbitrary, the important part is that it's always the same number for a given string within your program - indeed, the hash value does not stay constant across different instances of Ruby (i.e quit completely and start over, you'll get a new hash value for the same string)
	# aDict.length tells us how many buckets (arrays) are in the aDict array
	# we then return the modulus of these two numbers, so that if the 'key' hash number is greater than the number of buckets, we loop back around to the beginning so as to 'fit' in the array
	# this all has the effect of assigning a location for key within the array - it may be possible based upon the number of 'buckets' in the aDict array that more than one array is in the same bucket - i.e. an array (aDict) of arrays (buckets) of arrays (the individual arrays that we set using the Dict.set function below)
	
	return key.hash % aDict.length
  end
  
  def Dict.get_bucket(aDict, key)
    # Given a key, find the bucket where it would go.
	# run the hash_key function defined above and save the number in bucket_id
	bucket_id = Dict.hash_key(aDict, key)
	# then we look in aDict for the number [bucket_id] bucket/array and return that
	return aDict[bucket_id]
	# so effectively at this point we have said, "Here is a key, convert it to an integer using the .hash method, then modulo that number into the set number of arrays in the (aDict) arrays, then return the array(s) (or whatever) is stored at that point in the aDict array"
	# this means that based upon the number of buckets in our aDict array, get_bucket could be returning an array with multiple arrays in it, so we don't know for sure exactly what we're getting yet
  end
  
  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket. Basically, narrow down to exactly which value we want
	# first we run the get_bucket function, see above, then store the return in the bucket variable
    bucket = Dict.get_bucket(aDict, key)
    # next we call the .each_with_index method on bucket, which accepts two arguments, |item, index|
    bucket.each_with_index do |kv, i| # so for each of the array values (potentially each an array) stored in bucket:
      k, v = kv
	  # set the kv variable = k, v placeholders so we can evaluate them separately, as kv is actually = [xyz, abc]
	  if key == k
	    return i, k, v
	  end
	  # if the key we input to begin with for get_slot == the value of k, return the values of i, k, v (index # of aDict where the key is found, key we input, the value of that key)
    end
	
	return -1, key, default
	# otherwise, just return the -1 value of aDict, which corresponds to the default value defined in the function, or you can pass in your own default as the third argument
  end
  
  
  def Dict.get(aDict, key, default=nil)
    # Gets the value in a bucket for the given key, or the default. This is just taking the get_slot function and only returning the value of the v variable
	i, k, v = Dict.get_slot(aDict, key, default=default)
	return v
  end
  
  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value
	bucket = Dict.get_bucket(aDict, key)
	i, k, v = Dict.get_slot(aDict, key)
	# based upon the key argument input, figure out the bucket and then slot that that key fits into, set our i, k, v values
	
	if i >= 0
	  bucket[i] = [key, value]
	  # if according to get_slot the key already is indexed to a slot (therefore it'll be >= 0, set the new value to that key)
	else
	  bucket.push([key, value])
	  # else, it must not be in the array yet (i will be = -1), so add the key, index pair to the end
	end
  end
  
  def Dict.delete(aDict, key)
    # Deletes the given key from the Dict.
	bucket = Dict.get_bucket(aDict, key)
	# find the bucket where this key would be stored
	
	(0...bucket.length).each do |i| # go through each item in the bucket variable and:
	  k, v = bucket[i]
	  # store the key, value as k, v
	  if key == k
	    bucket.delete_at(i)
		break
	  end
	  # if k == the key argument, use the .delete_at method to remove the value stored at i
	end
  end
  
  def Dict.list(aDict)
    # Prints out what's in the Dict.
	aDict.each do |bucket|
	  if bucket
	    bucket.each {|k, v| puts k, v}
      end
	end
  end
  
  def Dict.dump(aDict) # dump function example that prints out every single value
    aDict.each_with_index do |kv, i|
	  if kv
	    k, v = kv
		puts "#{i}, #{kv}"
	  end
	end
  end
end