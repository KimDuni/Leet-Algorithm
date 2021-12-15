class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
     
        var idx:[Int] = []
        for (i , num) in nums.enumerated() {
            if num == val {
                idx.append(i)
            }
         }
    
        var v = 0
        for i in idx {
            nums.remove(at: i + v)
            v -= 1
        }
    
        return nums.count
    }
}