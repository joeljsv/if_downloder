

import 'instagram_user.dart';

class InstagramReel {
  String? thumbnailsrc;
  String? videourl;
  int? videoviewcount;
  int? videoplaycount;
  String? caption;
  InstagramUser? user;
  String songname;
  String songartist;

  InstagramReel(
      {this.thumbnailsrc,
      this.videourl,
      this.videoviewcount,
      this.videoplaycount,
      this.caption,
      this.user,
      this.songname = "Unknown",
      this.songartist = "Unknown"});
}
