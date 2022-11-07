import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/extinsions.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/widgets/custem_text.dart';

import '../widgets/custom_button.dart';

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
      // endDrawer: _drawer(
      //   homeController: homeController,
      // ),
      drawer: _drawer2(
        homeController: homeController,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const _theIntro(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            _threeActionButton(homeController: homeController),
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
            const _galleryPhoto(),
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
            GetBuilder<HomeController>(
              builder: (controller) => Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 280,
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: homeController.listViewController,
                      itemCount: 10,
                      physics: const BouncingScrollPhysics(),
                      // padding: EdgeInsets.symmetric(horizontal: 150),
                      itemBuilder: (context, index) {
                        return Container(
                          // height: MediaQuery.of(context).size.width * 0.55,
                          // width: MediaQuery.of(context).size.width * 0.7,
                          height: double.infinity,
                          width: 350,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR07r3v43BpL9y7sRZ0YHUH7aqDkOoL30q_1d5_6RbWaN5hfq0PReiz5H2orTvx4fSWr30&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                            onPressed: () {
                              // homeController.scrollNext();
                            },
                            icon: const Icon(Icons.arrow_back_ios_new, size: 16,)),
                      ),
                      const Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: IconButton(
                            onPressed: () {
                              // homeController.scrollBack();
                            },
                            icon: const Icon(Icons.navigate_next_sharp)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
            _infoSection(homeController: homeController),
          ],
        )
            .paddingMobile(
                context, MediaQuery.of(context).size.width * 0.065, 0.0)
            .paddingDesk(context, MediaQuery.of(context).size.width * 0.15, 0.0)
            .paddingTab(
                context, MediaQuery.of(context).size.width * 0.085, 0.0),
      ),
    );
  }
}

class _infoSection extends StatelessWidget {
  const _infoSection({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mob: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebText(
            txt: "Phone",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          WebText(
            txt: "+972 56 702 2104",
            fontSize: 18,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 40,
          ),
          WebText(
            txt: "Address",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          WebButton(
            txt: "Address",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          WebText(
            txt: "Gaza - Palestine",
            color: Colors.grey,
            fontSize: 18,
          ),
          const SizedBox(
            height: 40,
          ),
          WebText(
            txt: "times of work",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          WebText(
            txt: "Mo: 10:00–19:00 Uhr\n"
                "Di: 10:00–19:00 Uhr\n"
                "Mi: 10:00–19:00 Uhr\n"
                "Do: 10:00–19:00 Uhr\n"
                "Fr: 10:00–19:00 Uhr\n"
                "Sa: 09:00–17:00 Uhr\n"
                "So: Geschlossen",
            color: Colors.grey,
            fontSize: 18,
            height: 2,
          ),
        ],
      ),
      tab: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Phone",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebButton(
                  txt: "Call",
                  outLineBorder: false,
                  width: 300,
                  high: 50,
                  colorButton: Colors.teal,
                  onPressed: () {
                    homeController.makeCall();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "+972 56 702 2104",
                  color: Colors.grey,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 40,
                ),
                WebText(
                  txt: "Address",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebButton(
                  txt: "Location",
                  outLineBorder: false,
                  width: 300,
                  high: 50,
                  colorButton: Colors.teal,
                  onPressed: () {
                    homeController.navigateToLocation(20, 20);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Gaza - palestine",
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "times of work",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Mo: 10:00–19:00 Uhr\n"
                      "Di: 10:00–19:00 Uhr\n"
                      "Mi: 10:00–19:00 Uhr\n"
                      "Do: 10:00–19:00 Uhr\n"
                      "Fr: 10:00–19:00 Uhr\n"
                      "Sa: 09:00–17:00 Uhr\n"
                      "So: Geschlossen",
                  color: Colors.grey,
                  fontSize: 18,
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
      desk: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      WebText(
                        txt: "Phone",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WebButton(
                        txt: "Call",
                        outLineBorder: false,
                        width: 300,
                        high: 50,
                        colorButton: Colors.teal,
                        onPressed: () {
                          homeController.makeCall();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WebText(
                        txt: "+972 56 702 2104",
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      WebText(
                        txt: "Address",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WebButton(
                        txt: "Location",
                        outLineBorder: false,
                        width: 300,
                        high: 50,
                        colorButton: Colors.teal,
                        onPressed: () {
                          homeController.navigateToLocation(20, 20);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WebText(
                        txt: "Gaza - palestine",
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "times of work",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Mo: 10:00–19:00 Uhr\n"
                      "Di: 10:00–19:00 Uhr\n"
                      "Mi: 10:00–19:00 Uhr\n"
                      "Do: 10:00–19:00 Uhr\n"
                      "Fr: 10:00–19:00 Uhr\n"
                      "Sa: 09:00–17:00 Uhr\n"
                      "So: Geschlossen",
                  color: Colors.grey,
                  fontSize: 18,
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _galleryPhoto extends StatelessWidget {
  const _galleryPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 1100,
      // height: 900,
      child: GridView.builder(
        itemCount: 9,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 450,
          childAspectRatio: 346 / 275,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => InkWell(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://as1.ftcdn.net/v2/jpg/02/39/01/98/1000_F_239019821_sj9bjkY1oPLVobycpK4dISRcamHI6uHo.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      // child: Container(
      //   color: Colors.red,
      // ),
    );
  }
}

class _threeActionButton extends StatelessWidget {
  const _threeActionButton({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mob: Column(
        children: [
          WebButton(
            txt: "Email",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.sendMail();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Location",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
        ],
      ),
      tab: Column(
        children: [
          WebButton(
            txt: "Email",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.sendMail();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Location",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
        ],
      ),
      desk: Row(
        children: [
          Expanded(
            child: WebButton(
              txt: "Email",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.sendMail();
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: WebButton(
              txt: "Call",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.makeCall();
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: WebButton(
              txt: "Location",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.navigateToLocation(20, 20);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _theIntro extends StatelessWidget {
  const _theIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WebText(
          txt: "Welcome,",
          color: Colors.teal,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        WebText(
          txt: "Hi",
          color: Colors.blueGrey,
          fontSize: 16,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        WebButton(
          txt: "make",
          outLineBorder: false,
          width: MediaQuery.of(context).size.width * 0.28,
          high: MediaQuery.of(context).size.height * 0.068,
          colorButton: Colors.teal,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://media.gettyimages.com/photos/barber-styling-senior-males-beard-picture-id1227512439?s=612x612"),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}

class _drawer extends StatelessWidget {
  const _drawer({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 15,
                  )),
            ),
            // Container(width: double.infinity,),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: WebText(
                txt: "Location",
                color: Colors.teal,
              ),
              onTap: () {
                homeController.navigateToLocation(20, 15.8);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: WebText(
                txt: "Call",
                color: Colors.teal,
              ),
              onTap: () {
                homeController.makeCall();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: WebText(
                txt: "Mail",
                color: Colors.teal,
              ),
              onTap: () {
                homeController.sendMail();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _drawer2 extends StatelessWidget {
  const _drawer2({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
            ),
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
                ListTile(
                  leading: const Icon(Icons.facebook),
                  title: WebText(
                    txt: "Facebook",
                    color: Colors.teal,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.face),
                  title: WebText(
                    txt: "Instagram",
                    color: Colors.teal,
                  ),
                  onTap: () {},
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
    );
  }
}
