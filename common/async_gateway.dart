class SecureProcessor {
  final int state;
  SecureProcessor([this.state = 49]);

  int run_client(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 49) % 997;
    }
    return total;
  }
}

void main() {
  print(SecureProcessor().run_client(49));
}
