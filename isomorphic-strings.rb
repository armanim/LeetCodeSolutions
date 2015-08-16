# Solutin for Isomorphic Strings
# URL: https://leetcode.com/problems/isomorphic-strings/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
	if s.length == t.length
		compare(get_hash(s), get_hash(t), s, t)
	else
		false
	end 
end

def get_hash(string)
	hash = {}
	for i in 0...(string.length)
		if hash[string[i]]
			hash[string[i]] << i
		else
			hash[string[i]] = [i]
		end
	end
	hash
end

def compare(h1, h2, s, t)
	if h1.keys.length == h2.keys.length
		for i in 0...(s.length)
			return false if h1[s[i]] != h2[t[i]]
		end
		return true
	else
		false
	end
end