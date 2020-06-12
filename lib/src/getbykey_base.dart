extension GetByKeyExtension<E> on List<E> {
  E getByKey(var key) {
    for (dynamic element in this) {
      if (element.$key == key) return element;
    }
    return null;
  }
}
