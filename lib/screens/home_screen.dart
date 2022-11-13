import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/extinsions.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/screens/customer_photo_widget.dart';
import 'package:test_web/screens/divider_widget.dart';
import 'package:test_web/screens/drawer_widget.dart';
import 'package:test_web/screens/gallery_widget.dart';
import 'package:test_web/screens/info_section_widget.dart';
import 'package:test_web/screens/intro_widget.dart';
import 'package:test_web/screens/list_tile_drawer_widget.dart';
import 'package:test_web/screens/three_action_button_widget.dart';
import 'package:test_web/widgets/custem_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController homeController =
      Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WebText(
          txt: "Amar web",
          color: Colors.teal,
        ),
      ),
      drawer: Responsive.isDesktop(context)
          ? null
          : DrawerWidget(
              homeController: homeController,
            ),
      body: Responsive(
        mob: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              IntroWidget(txtFontSize: 75.sp, descFontSize: 65.sp,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              ThreeActionButtonWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Gallery",
                color: Colors.blueGrey,
                fontSize: 70.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const GalleryWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Results",
                color: Colors.blueGrey,
                fontSize: 70.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              CustomerPhotoWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Information",
                color: Colors.blueGrey,
                fontSize: 70.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              InkWell(
                onTap: () {
                  homeController.navigateToLocation(50, 50);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.55,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                    image: NetworkImage(
                        "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                    fit: BoxFit.cover,
                  ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              InfoSectionWidget(homeController: homeController),
            ],
          )
              .paddingMobile(
                  context,
              horizontal: MediaQuery.of(context).size.width * 0.065, vertical: 15.h),
        ),
        tab: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              IntroWidget(txtFontSize: 55.sp, descFontSize: 45.sp,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              ThreeActionButtonWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Gallery",
                color: Colors.blueGrey,
                fontSize: 60.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const GalleryWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Results",
                color: Colors.blueGrey,
                fontSize: 60.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              CustomerPhotoWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const DividerWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Information",
                color: Colors.blueGrey,
                fontSize: 60.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              InkWell(
                onTap: () {
                  homeController.navigateToLocation(50, 50);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.55,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                    image: NetworkImage(
                        "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                    fit: BoxFit.cover,
                  ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              InfoSectionWidget(homeController: homeController),
            ],
          )
              .paddingTab(
                  context, horizontal: MediaQuery.of(context).size.width * 0.085, vertical: 15.h),
        ),
        desk: Row(
          children: [
            SizedBox(
              width: 320.w,
              height: double.infinity,
              child: Card(
                elevation: 5,
                child: SingleChildScrollView(
                  child: ListTileDrawerWidget(homeController: homeController),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    IntroWidget(txtFontSize: 38.sp, descFontSize: 32.sp,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    ThreeActionButtonWidget(homeController: homeController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    const DividerWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    WebText(
                      txt: "Gallery",
                      color: Colors.blueGrey,
                      fontSize: 32.sp,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.038,
                    ),
                    const GalleryWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    const DividerWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    WebText(
                      txt: "Results",
                      color: Colors.blueGrey,
                      fontSize: 32.sp,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.038,
                    ),
                    CustomerPhotoWidget(homeController: homeController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    const DividerWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    WebText(
                      txt: "Information",
                      color: Colors.blueGrey,
                      fontSize: 32.sp,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.038,
                    ),
                    InkWell(
                      onTap: () {
                        homeController.navigateToLocation(50, 50);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.55,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                          image: NetworkImage(
                              "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                          fit: BoxFit.cover,
                        ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    InfoSectionWidget(homeController: homeController),
                  ],
                )
                    .paddingDesk(
                        context, horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 15.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



