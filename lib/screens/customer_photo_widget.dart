import 'package:flutter/material.dart';

import '../controller/home_controller.dart';

class CustomerPhotoWidget extends StatelessWidget {
  const CustomerPhotoWidget({Key? key, required this.homeController})
      : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR07r3v43BpL9y7sRZ0YHUH7aqDkOoL30q_1d5_6RbWaN5hfq0PReiz5H2orTvx4fSWr30&usqp=CAU"),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padEnds: false,
            controller: homeController.getPageController(context),
            physics: const BouncingScrollPhysics(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
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
                          homeController.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                        )),
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
                          homeController.next();
                        },
                        icon: const Icon(Icons.navigate_next_sharp)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
