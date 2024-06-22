from time import now
from collections import List


fn binary_search(arr : List[Int16], x : Int16) -> Int16:
    var low = 0
    var high = len(arr) - 1
    var mid = 0

    while low <= high:
        mid = (high + low) // 2

        if arr[mid] < x:
            low = mid + 1
        elif arr[mid] > x:
            high = mid - 1
        else:
            return mid

    return -1


def main():
    n = 1_000_000

    arr = List[Int16]()
    for i in range(n):
        arr.append(i)

    t = now()

    for i in range(n):
        r = binary_search(arr, i)

    print((now() - t) / 1e6 , "ms")
