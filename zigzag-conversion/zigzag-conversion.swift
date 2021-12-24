class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        
        //AB, 1 실패
        guard numRows > 1 else {
            return s
        }
        
        var rows = Array(repeating: [String](), count: numRows)
        var index = 0
        var up = true
        
        for c in s {
            
            rows[index].append(String(c))
            
            if index == 0 {
                up = true
            } else if index == numRows - 1 {
                up = false
            }
            
            index = up ? index + 1 : index - 1
        }
        
        var result = ""
        rows.compactMap { strings in
            result.append(strings.joined(separator: ""))
        }
        
        return result
    }
}