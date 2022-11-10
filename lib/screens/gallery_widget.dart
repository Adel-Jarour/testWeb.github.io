import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
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
