import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/extinsions.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/screens/customer_photo_widget.dart';
import 'package:test_web/screens/drawer_widget.dart';
import 'package:test_web/screens/gallery_widget.dart';
import 'package:test_web/screens/info_section_widget.dart';
import 'package:test_web/screens/intro_widget.dart';
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
              IntroWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              ThreeActionButtonWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
                child: const Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Gallery",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const GalleryWidget(),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
                child: const Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              WebText(
                txt: "Results",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomerPhotoWidget(homeController: homeController),
              const SizedBox(
                height: 80,
              ),
              const SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              WebText(
                txt: "Information",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  homeController.navigateToLocation(50, 50);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.55,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              InfoSectionWidget(homeController: homeController),
            ],
          )
              .paddingMobile(
                  context, MediaQuery.of(context).size.width * 0.065, 0.0)
              .paddingDesk(
                  context, MediaQuery.of(context).size.width * 0.15, 0.0)
              .paddingTab(
                  context, MediaQuery.of(context).size.width * 0.085, 0.0),
        ),
        tab: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              IntroWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              ThreeActionButtonWidget(homeController: homeController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
                child: const Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              WebText(
                txt: "Gallery",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const GalleryWidget(),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
                child: const Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              WebText(
                txt: "Results",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomerPhotoWidget(homeController: homeController),
              const SizedBox(
                height: 80,
              ),
              const SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              WebText(
                txt: "Information",
                color: Colors.blueGrey,
                fontSize: 20,
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  homeController.navigateToLocation(50, 50);
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.55,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              InfoSectionWidget(homeController: homeController),
            ],
          )
              .paddingMobile(
                  context, MediaQuery.of(context).size.width * 0.065, 0.0)
              .paddingDesk(
                  context, MediaQuery.of(context).size.width * 0.15, 0.0)
              .paddingTab(
                  context, MediaQuery.of(context).size.width * 0.085, 0.0),
        ),
        desk: Row(
          children: [
            SizedBox(
              width: 200,
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.location_on,
                          ),
                          title: WebText(
                            txt: "Location",
                            color: Colors.teal,
                          ),
                          onTap: () {
                            homeController.navigateToLocation(20, 20);
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          leading: const Icon(Icons.call),
                          title: WebText(
                            txt: "Call",
                            color: Colors.teal,
                          ),
                          onTap: () {
                            homeController.makeCall();
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          leading: const Icon(Icons.email),
                          title: WebText(
                            txt: "Email",
                            color: Colors.teal,
                          ),
                          onTap: () {
                            homeController.sendMail();
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          leading: const Icon(Icons.facebook),
                          title: WebText(
                            txt: "Facebook",
                            color: Colors.teal,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          leading: const Icon(Icons.face),
                          title: WebText(
                            txt: "Instagram",
                            color: Colors.teal,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          leading: const Icon(Icons.info),
                          title: WebText(
                            txt: "About us",
                            color: Colors.teal,
                          ),
                          onTap: () {
                            Get.to(() => const AboutUsScreen());
                          },
                        ),
                      ],
                    ),
                  ],
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
                    const IntroWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    ThreeActionButtonWidget(homeController: homeController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: const Divider(
                        color: Colors.grey,
                        height: 5,
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    WebText(
                      txt: "Gallery",
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    const GalleryWidget(),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: const Divider(
                        color: Colors.grey,
                        height: 5,
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    WebText(
                      txt: "Results",
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    CustomerPhotoWidget(homeController: homeController),
                    const SizedBox(
                      height: 80,
                    ),
                    const SizedBox(
                      width: 100,
                      child: Divider(
                        color: Colors.grey,
                        height: 5,
                        thickness: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    WebText(
                      txt: "Information",
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        homeController.navigateToLocation(50, 50);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.55,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png"),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    InfoSectionWidget(homeController: homeController),
                  ],
                )
                    .paddingMobile(
                        context, MediaQuery.of(context).size.width * 0.065, 0.0)
                    .paddingDesk(
                        context, MediaQuery.of(context).size.width * 0.15, 0.0)
                    .paddingTab(
                        context, MediaQuery.of(context).size.width * 0.085, 0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

