import 'package:flutter/material.dart';
import 'package:test_web/extinsions.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/widgets/custem_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WebText(
          txt: "About us",
          fontWeight: FontWeight.bold,
          fontSize: 23,
          color: Colors.teal,
        ),
      ),
      body: Responsive(
        mob: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              WebText(
                txt:
                    "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                height: 1.3,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        WebText(
                          txt: "name: Adel Jarour",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.02,
                        ),
                        WebText(
                          txt: "age: 25",
                          fontSize: 17,
                          color: Colors.black,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.02,
                        ),
                        WebText(
                          txt: "years of experience: 4",
                          fontSize: 17,
                          color: Colors.black,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.02,
                        ),
                        Expanded(
                          child: WebText(
                            txt:
                                "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                            height: 1.3,
                            fontSize: 16,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  );
                },
                itemCount: 5,
                shrinkWrap: true,
              ),
            ],
          ).paddingMobile(context, horizontal: MediaQuery.of(context).size.width * 0.03, vertical: MediaQuery.of(context).size.height * 0.01),
        ),
        tab: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              WebText(
                txt:
                    "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                height: 1.3,
                fontSize: 18,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.39,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              WebText(
                                txt: "name: Adel Jarour",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "age: 25",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "years of experience: 4",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Expanded(
                                child: WebText(
                                  txt:
                                      "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                                  height: 1.3,
                                  fontSize: 16,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  );
                },
                itemCount: 5,
                shrinkWrap: true,
              ),
            ],
          ).paddingTab(context, horizontal: MediaQuery.of(context).size.width * 0.03, vertical: MediaQuery.of(context).size.height * 0.01),
        ),
        desk: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              WebText(
                txt:
                    "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                height: 1.3,
                fontSize: 18,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              WebText(
                                txt: "name: Adel Jarour",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "age: 25",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "years of experience: 4",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Expanded(
                                child: WebText(
                                  txt:
                                      "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                                  height: 1.3,
                                  fontSize: 16,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  );
                },
                itemCount: 5,
                shrinkWrap: true,
              ),
            ],
          ).paddingDesk(context, horizontal: MediaQuery.of(context).size.width * 0.03, vertical: MediaQuery.of(context).size.height * 0.01),
        ),
      ),
    );
  }
}
