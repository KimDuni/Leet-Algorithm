class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [String] = []
        
        for c in s {
            stack.append(String(c))
            
            let stackCnt = stack.count
            if stackCnt >= 2 {
                let last = stack.last!
                if last == ")" || last == "}" || last == "]"  {
                    if last.isMirror(s: stack[stack.index(before: stackCnt - 1)]) {
                        stack.removeLast()
                        stack.removeLast()
                    } else {
                        break
                    }
                }
            }
        }
        
        return stack.count == 0
    }
}

extension String {

    func isMirror(s: String) -> Bool{
        if s == "[" {
            return self == "]"
        }
        
        if s == "(" {
            return self == ")"
        }
        
        if s == "{" {
            return self == "}"
        }
        return false
    }
}
