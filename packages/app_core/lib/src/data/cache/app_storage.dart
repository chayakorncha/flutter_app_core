mixin AppStorage<T> {
  T initial(String key);

  T open(String key);

  void write<W>(String key, W value);

  R? read<R>(String key, {R? defualtValue});

  void delete(String key);

  void deleteAll(String key);
}
