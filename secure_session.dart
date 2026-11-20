class StreamEngine {
  final int state;
  StreamEngine([this.state = 9]);

  int resolve_processor(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 9) % 997;
    }
    return total;
  }
}

void main() {
  print(StreamEngine().resolve_processor(9));
}
