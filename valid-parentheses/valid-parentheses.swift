class Solution {
    func isValid(_ s: String) -> Bool {
        var s = s
        while true {
            if s.contains("[]") || s.contains("()") || s.contains("{}") {
                s = s.replacingOccurrences(of: "[]", with: "")
                s = s.replacingOccurrences(of: "()", with: "")
                s = s.replacingOccurrences(of: "{}", with: "")
            } else {
                break
            }
        }
        
        return s.count == 0
    }
}