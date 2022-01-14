# ArraysMedian

Metodo para agrupar dos arreglos y obtener su mediana.

Para este algoritmo existen dos casos, que dependeran de si la longitud del arreglo es par o non.

En el primer test se probo el caso non con los siguientes datos:
*Array1 = [1,2,3]
*Array2 = [2,3]
*Resultado = 2.0

En el segundo test de evalua el caso par con los siguientes datos:
*Array1 = [1,2,3]
*Array2 = [2,3,4]
*Resultado = 2.5

En la seccion de test del proyecto hay dos metodos encargados de automatizar esas pruebas.

```Swift
class Solution {
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
```
