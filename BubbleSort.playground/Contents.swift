/*:
# What is Bubble Sort??
 ![BubbleSort](bubble-sort.png)
 Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the input list element by element, comparing the current element with the one after it, swapping their values if needed. These passes through the list are repeated until no swaps had to be performed during a pass, meaning that the list has become fully sorted. The algorithm, which is a comparison sort, is named for the way the larger elements "bubble" up to the top of the list.
- - -
*/
/*:
# How it work??
1. Start at the beginning of the list.
2. Compare the first item to the second item. If the first item is greater than the second item, swap them.
3. Move on to the next pair of items and repeat the comparison. If the second item is greater than the third item, swap them.
4. Continue this process until you reach the end of the list.
5. If you made any swaps, go back to the beginning of the list and repeat the process until you can go through the entire list without making any swaps.
- - -
 */
/*:
# Example
Here is some example of bubble sort
*/
func bubbleSort(list: inout [Int]) {
    // Go through the list and compare each pair of items
    for _ in 0..<list.count - 1 {
        // Set a flag to false so we can track whether we made any swaps
        var madeSwap = false

        // Go through the list and compare each pair of items
        for j in 0..<list.count - 1 {
            if list[j] > list[j+1] {
                // Swap the items
                let temp = list[j]
                list[j] = list[j+1]
                list[j+1] = temp
                // Set the flag to true to indicate that we made a swap
                madeSwap = true
            }
        }

        // If we didn't make any swaps, we're done
        if !madeSwap {
            break
        }
    }
}

var list = [4, 2, 7, 1, 3, 10, 23, 100]
bubbleSort(list: &list)
print(list)



