enum SiteType {
  shark,
  whale,
  cave,
  artificial,
  wreck,
  dolphin,
  altitude,
  dugong,
  marineLife,
  sandyBottom
}

extension SiteTypeToString on SiteType {
  String name() {
    switch (this) {
      case SiteType.shark:
        return "shark";

      case SiteType.whale:
        return "whale";

      case SiteType.cave:
        return "Cave";

      case SiteType.artificial:
        return "artificial";

      case SiteType.wreck:
        return "wreck";

      case SiteType.dolphin:
        return "Dolphine";

      case SiteType.altitude:
        return "Altitude";

      case SiteType.dugong:
        return "Dugong";

      case SiteType.marineLife:
        return "marine life";

      case SiteType.sandyBottom:
        return "Sandy Bottom";
    }
  }
}

extension ToSiteType on String {
  SiteType mapToSiteType() {
    switch (this) {
      case "shark":
        return SiteType.shark;
      case "whale":
        return SiteType.whale;
      case "Cave":
        return SiteType.cave;
      case "artificial":
        return SiteType.altitude;
      case "Dolphin":
        return SiteType.dolphin;
      case "wreck":
        return SiteType.wreck;
      case "Altitude":
        return SiteType.altitude;
      case "Dugong":
        return SiteType.dugong;
      case "marine life":
        return SiteType.marineLife;
      case "Sandy Bottom":
        return SiteType.sandyBottom;
      default:
        throw Exception("invalid Site type");
    }
  }
}
