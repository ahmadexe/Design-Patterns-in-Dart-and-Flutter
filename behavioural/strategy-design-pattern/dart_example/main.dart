abstract class Sorter {
  List<int> sort(List<int> numbers);
}

class BubbleSort implements Sorter {
  @override
  List<int> sort(List<int> numbers) {
    // Implement bubble sort algorithm
    return numbers;
  }
}

class QuickSort implements Sorter {
  @override
  List<int> sort(List<int> numbers) {
    // Implement quick sort algorithm
    return numbers;
  }
}

class SortingAlgorithm {
  Sorter _sorter;
  
  SortingAlgorithm(this._sorter);
  
  List<int> sort(List<int> numbers) {
    return _sorter.sort(numbers);
  }
}

void main() {
  final sortingAlgorithm = SortingAlgorithm(BubbleSort());
  final numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  final sortedNumbers = sortingAlgorithm.sort(numbers);
  print(sortedNumbers);
  
  sortingAlgorithm._sorter = QuickSort();
  final sortedNumbers2 = sortingAlgorithm.sort(numbers);
  print(sortedNumbers2);
}
