enum Status {
  initial,
  loading,
  error,
  success,
  logged,
  loaded,
}

extension ValidationParser on Status {
  bool get isLoading => this == Status.loading;
  bool get isInitial => this == Status.initial;
  bool get isSuccess => this == Status.success;
  bool get isLogged => this == Status.logged;
  bool get isLoaded => this == Status.loaded;
  bool get isError => this == Status.error;
}
