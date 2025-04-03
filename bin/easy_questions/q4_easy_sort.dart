// Compare the time complexities of different sorting algorithms.

/*
 Sorting Algorithm    | Best Case   | Average Case | Worst Case  | Space Complexity | Stable? | In-Place?
 ---------------------|-------------|--------------|------------|------------------|---------|------------
 Bubble Sort          | O(n)        | O(n^2)       | O(n^2)     | O(1)             | Yes     | Yes
 Selection Sort       | O(n^2)      | O(n^2)       | O(n^2)     | O(1)             | No      | Yes
 Insertion Sort       | O(n)        | O(n^2)       | O(n^2)     | O(1)             | Yes     | Yes
 Merge Sort           | O(n log n)  | O(n log n)   | O(n log n) | O(n)             | Yes     | No
 QuickSort (Avg)      | O(n log n)  | O(n log n)   | O(n^2)     | O(log n)         | No      | Yes
 Heap Sort            | O(n log n)  | O(n log n)   | O(n log n) | O(1)             | No      | Yes
 Counting Sort        | O(n + k)    | O(n + k)     | O(n + k)   | O(k)             | Yes     | No
 Radix Sort           | O(nk)       | O(nk)        | O(nk)      | O(n + k)         | Yes     | No
*/

/*
 * Key Takeaways:
 * - Bubble Sort, Selection Sort, and Insertion Sort are inefficient for large data (O(n^2)).
 * - Merge Sort, QuickSort, and Heap Sort are better for large datasets (O(n log n)).
 * - QuickSort is fastest in practice, but Merge Sort is preferred when stability is needed.
 * - Counting Sort and Radix Sort are best for integers but require extra space.
 */