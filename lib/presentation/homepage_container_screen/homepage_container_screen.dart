import 'controller/homepage_container_controller.dart';
import 'package:ferdy_s_application1/core/app_export.dart';
import 'package:ferdy_s_application1/presentation/homepage_page/homepage_page.dart';
import 'package:ferdy_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomepageContainerScreen extends GetWidget<HomepageContainerController> {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homepagePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Contrast:
        return "/";
      case BottomBarEnum.Plus:
        return "/";
      case BottomBarEnum.Megaphonebluegray900:
        return AppRoutes.homepagePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }
}
