class CoreWorker {
  final int state;
  CoreWorker([this.state = 74]);

  int collect_cache(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 74) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreWorker().collect_cache(74));
}
