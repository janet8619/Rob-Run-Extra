class RemoteProvider {
  final int state;
  RemoteProvider([this.state = 95]);

  int flush_manager(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 95) % 997;
    }
    return total;
  }
}

void main() {
  print(RemoteProvider().flush_manager(95));
}
