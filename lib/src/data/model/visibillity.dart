enum Visibility { high, low }

extension StringToVisibility on String {
  Visibility mapToVisibility() {
    switch (this) {
      case "High":
        return Visibility.high;
      case "low":
        return Visibility.low;
      default:
        throw Exception("Invalid visibility type");
    }
  }
}

extension VisibiltyToString on Visibility {
  String name() {
    switch (this) {
      case Visibility.high:
        return "High";

      case Visibility.low:
        return "low";
    }
  }
}
