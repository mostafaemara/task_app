enum SiteEntry { shore, boat }

extension StringToSiteEntry on String {
  SiteEntry mapToSiteEntry() {
    switch (this) {
      case "Boat":
        return SiteEntry.boat;
      case "Shore":
        return SiteEntry.shore;
      default:
        throw Exception("Invalid Site entry type");
    }
  }
}

extension SiteEntryToString on SiteEntry {
  String name() {
    switch (this) {
      case SiteEntry.shore:
        return "Shore";

      case SiteEntry.boat:
        return "Boat";
    }
  }
}
