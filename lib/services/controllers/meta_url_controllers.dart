import 'package:get/get.dart';
import 'package:if_downloder/model/instagram/instagram_reel.dart';

import '../../model/instagram/instagram_user.dart';
import '../meta_services/instsgram.dart';

class MetaUrlController extends GetxController {
   
  final reel = InstagramReel(
          thumbnailsrc: '',
          videourl: '',
          videoviewcount: 0,
          videoplaycount: 0,
          caption: '',
          user: InstagramUser(
              username: '',
              profilepicurl: '',
              fullname: "",
              edgefollowedby: 0,
              biography: '',
              externalurl: ''))
      .obs;

  Future<void> updateURLS(String link) async {
    if (link.contains("instagram")) {
      InstaService insta = InstaService();
      reel.value = await insta.downloadReels(link);
      update();
    }
  }
}
