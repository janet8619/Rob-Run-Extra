class BatchContext {
  final int state;
  BatchContext([this.state = 83]);

  int run_loader(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 83) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchContext().run_loader(83));
}
