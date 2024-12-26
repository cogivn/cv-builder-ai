extension IterableDoubleExtension on Iterable<double> {
  double get average {
    if (isEmpty) return 0;
    return reduce((a, b) => a + b) / length;
  }
} 