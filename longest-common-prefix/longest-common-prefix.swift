class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sortedStrs = strs.sorted {
            return $0.count < $1.count
        }

        let minLenStr = sortedStrs[0]
        var result = ""

        for i in 0..<minLenStr.count {
    
            let c = minLenStr.index(minLenStr.startIndex, offsetBy: i)
            let checkStr = minLenStr[c]

            var same = true
            for j in 1 ..< sortedStrs.count {
                let compareStr = sortedStrs[j]
                if checkStr != compareStr[compareStr.index(compareStr.startIndex, offsetBy: i)] {
                    same = false
                    break
                }
            }

            if same {
                result.append(checkStr)
            } else {
                break
            }
        }
        return result
    }
}

//다음 아이디어 
//hasPrefix, popLast 를 사용해서 처리해보면 훨씬 간단할것으로 보인다.

