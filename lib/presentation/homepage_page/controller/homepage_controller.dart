import 'package:ferdy_s_application1/core/app_export.dart';
import 'package:ferdy_s_application1/presentation/homepage_page/models/homepage_model.dart';

/// A controller class for the HomepagePage.
///
/// This class manages the state of the HomepagePage, including the
/// current homepageModelObj
class HomepageController extends GetxController {
  HomepageController(this.homepageModelObj);

  Rx<HomepageModel> homepageModelObj;
}
