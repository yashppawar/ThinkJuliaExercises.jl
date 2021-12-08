## Exercise 8-10
## The following functions are all intended to check whether a string contains any lowercase letters, but at least some of them are wrong. For each function, describe what the function actually does (assuming that the parameter is a string).

"""
if first letter is lowercase return true, else return false;
"""
function anylowercase1(s)
    for c in s
        if islowercase(c)
            return true
        else
            return false
        end
    end
end


"""
return string true if 'c' is lowercase, i.e. will always return true
"""
function anylowercase2(s)
    for c in s
        if islowercase('c')
            return "true"
        else
            return "false"
        end
    end
end

"""
returns true if last char is lowercase, else false
"""
function anylowercase3(s)
    for c in s
        flag = islowercase(c)
    end
    flag
end

"""
yeilds expected results
"""
function anylowercase4(s)
    flag = false
    for c in s
        flag = flag || islowercase(c)
    end
    flag
end

"""
will return true if every char is lowercase, else false
"""
function anylowercase5(s)
    for c in s
        if !islowercase(c)
            return false
        end
    end
    true
end
