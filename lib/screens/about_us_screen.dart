import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
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
                          height: MediaQuery.of(context).size.height * 0.35,
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
                              WebText(
                                txt: "name: Adel Jarour",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "age: 25",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                              WebText(
                                txt: "years of experience: 4",
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
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
          ),
        ),
      ),
    );
  }
}
