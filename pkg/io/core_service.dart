class SimpleProvider {
  final int state;
  SimpleProvider([this.state = 63]);

  int collect_context(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 63) % 997;
    }
    return count;
  }
}

void main() {
  print(SimpleProvider().collect_context(63));
}
