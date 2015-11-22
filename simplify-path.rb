# Solutin for Simplify Path
# URL: https://leetcode.com/problems/simplify-path/

# @param {String} path
# @return {String}
$stack = []
def simplify_path(path)
    path_elements = path.split('/')
    path_elements.each do |element|
        if element.length > 0 and element != "."
            if element == ".."
                $stack.delete_at(-1) if $stack.length > 0
            else
                $stack << element
            end
        end
    end
    result = ""
    return "/" if $stack.length == 0
    $stack.each do |element|
        result += "/#{element}"
    end
    
    $stack = []

    return result
end