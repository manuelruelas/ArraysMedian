struct ArraysMedian {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

            var nums:[Int] = nums1

            nums.append(contentsOf:nums2)

            nums.sort(by:{$0<$1})

           

            let r = nums.count % 2

            let half = nums.count / 2

           

            if r == 0{

                print("\(nums[half]) \(nums[half-1])")

                return Double((nums[half] + nums[half-1])) / 2.0

            }else {

                return Double(nums[Int(half)])

            }

        }
}
