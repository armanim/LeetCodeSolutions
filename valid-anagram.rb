# Solutin for Valid Anagram
# URL: https://leetcode.com/problems/valid-anagram/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
	if s.length == t.length
		compare(get_hash(s), get_hash(t))
	else
		false
	end 
end

def get_hash(string)
	hash = {}
	for i in 0...(string.length)
		if hash[string[i]]
			hash[string[i]] += 1
		else
			hash[string[i]] = 1
		end
	end
	hash
end

def compare(h1, h2)
	if h1.keys.length == h2.keys.length
		for key in h1.keys
			return false if h1[key] != h2[key]
		end
		return true
	else
		false
	end
end