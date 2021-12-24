class Solution {
    func reverse(_ x: Int) -> Int {
        
        let iToStr = String(x)
        var source = String(iToStr.reversed())
        
        if iToStr.hasPrefix("-") {
            source.removeLast()
            source.insert("-", at: source.startIndex)
        }
        
        if let result = Int32(source) {
            return Int(result)
        }
        return 0
    }
}