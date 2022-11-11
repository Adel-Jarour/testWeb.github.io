import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/screens/list_tile_drawer_widget.dart';
import 'package:test_web/widgets/custom_list_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.032,
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 45.r,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              CustomListTile(
                txt: "Location",
                icon: Icons.location_on,
                onTap: () {
                  homeController.navigateToLocation(20, 30);
                },
              ),
              ListTileDrawerWidget(homeController: homeController),
            ],
          ),
        ],
      ),
    );
  }
}
