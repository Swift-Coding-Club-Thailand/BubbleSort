/*:
# What is different about this solution and using "swapAt" solution?

The main difference between these two solutions is the way that the items are swapped. In the first solution, I used the swapAt method to swap the items in the list. This method is a convenient way to swap the values at two indices in an array, and it's also more efficient than using a temporary variable, because it doesn't require creating a new variable and copying the values into it.

Both solutions are correct and will produce the same result. The choice of which one to use will depend on your personal preference and the specific requirements of your project.
 - - -
 */
/*:
 # Example
 Here is some example of "swapAt" bubble sort solution
 - - -
 */
func bubbleSort(list: inout [Int]) {
    // Set a flag to false so we can track whether we made any swaps
    var madeSwap = true

    // Keep repeating the process until we make it to the end of the list without making any swaps
    while madeSwap {
        // Set the flag to false at the start of each iteration
        madeSwap = false

        // Go through the list and compare each pair of items
        for i in 0..<list.count - 1 {
            if list[i] > list[i+1] {
                // Swap the items
                list.swapAt(i, i+1)
                // Set the flag to true to indicate that we made a swap
                madeSwap = true
            }
        }
    }
}

var list = [4, 2, 7, 1, 3, 10, 23, 100]
bubbleSort(list: &list)
print(list)
