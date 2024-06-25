from time import now
from collections import List

def binary_search(arr : List[Int32], x : Int32) -> Int32:
    low = 0
    high = len(arr) - 1
    mid = 0

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

    arr = List[Int32]()
    for i in range(n):
        arr.append(i)

    results = List[Int32]()

    t = now()

    for i in range(n):
        results.append(binary_search(arr, i))

    print((now() - t) / 1e6, "ms")

    print("Results: ", len(results))
