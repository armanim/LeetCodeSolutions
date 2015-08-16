# Solutin for Rectangle Area
# URL: https://leetcode.com/problems/rectangle-area/

# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
	w1 = c - a
	h1 = d - b
	s1 = w1 * h1

	w2 = g - e
	h2 = h - f
	s2 = w2 * h2
	
	w3 = 0
	h3 = 0
	if e >= a and e <= c
		if g >= c
			w3 = c - e
		else
			w3 = w2
		end
	elsif g >= a and g <= c
		w3 = g - a
	elsif a >= e and a <= g
		if c >= g
			w3 = g - a
		else
			w3 = w1
		end
	elsif c >= e and c <= g
		w3 = c - e	
	end

	if f >= b and f <= d
		if h >= d
			h3 = d - f
		else
			h3 = h2
		end
	elsif h >= b and h <= d
		h3 = h - b
	elsif b >= f and b <= h
		if d >= h
			h3 = h - b
		else
			h3 = h1
		end
	elsif d >= f and d <= h
		h3 = d - f
	end

	s3 = w3 * h3

	s = s1 + s2 - s3
end