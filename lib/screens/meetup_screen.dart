import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:meet_up/screens/description_screen.dart';

class MeetUpScreen extends StatelessWidget {
  MeetUpScreen({super.key});

  final List<String> meetups = [
    "assets/meetups/meet2.png",
    "assets/meetups/meet3.png",
    "assets/meetups/meet1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* App bar
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'Individual MeetUp',
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(children: [
            //*Divider
            Divider(
              color: Colors.grey[300],
              thickness: 2,
            ),
            //*Search Container
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 10 * 0.08,
                  vertical: MediaQuery.of(context).size.height / 10 * 0.05),
              child: Container(
                height: MediaQuery.of(context).size.height / 10 * 0.5,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(230, 9, 113, 239)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.height / 10 * 0.08,
                        vertical:
                            MediaQuery.of(context).size.height / 10 * 0.05,
                      ),
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.mic)),
                ),
              ),
            ),

            //*Coursel container
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 10 * 0.08,
                  vertical: MediaQuery.of(context).size.height / 10 * 0.16),
              child: Container(
                height: MediaQuery.of(context).size.height / 10 * 1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[100]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: ImageSlideshow(
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.grey,
                    indicatorBottomPadding: 10,
                    // indicatorPadding: 20,
                    height: 20,
                    children: [
                      Image.asset(
                        meetups[0],
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        meetups[1],
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        meetups[2],
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //* Trending people Container
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height / 10 * 0.08,
                  right: MediaQuery.of(context).size.height / 10 * 0.08,
                  bottom: MediaQuery.of(context).size.height / 10 * 0.16),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 2.5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trending Popular people",
                        style: TextStyle(fontSize: 18),
                      ),
                      Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.height /
                                          10 *
                                          0.08,
                                      right:
                                          MediaQuery.of(context).size.height /
                                              10 *
                                              0.08,
                                      top: MediaQuery.of(context).size.height /
                                          10 *
                                          0.08,
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              10 *
                                              0.16),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height /
                                        10 *
                                        1.8,
                                    width: MediaQuery.of(context).size.width /
                                        10 *
                                        8,
                                    color: Colors.grey[100],
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 5),
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all()),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                        'assets/persons/images1.jpeg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Author",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.blue,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "1,232 Meetups",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          const Divider(
                                            indent: 10,
                                            endIndent: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    // border: Border.all()
                                                  ),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                        'assets/persons/images3.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    // border: Border.all()
                                                  ),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                        'assets/persons/images2.jpeg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    // border: Border.all()
                                                  ),
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                        'assets/persons/images4.jpeg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Container(
                                                height: 35,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Colors.blue,
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  "See more",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              })),
                    ]),
              ),
            ),

            //*Trending Meatups
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Top Trending Meetups",
                          style: TextStyle(fontSize: 18)),
                      Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0,
                                      right: 8.0,
                                      top: 8.0,
                                      bottom: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)),
                                    height: MediaQuery.of(context).size.width /
                                        10 *
                                        5,
                                    width: MediaQuery.of(context).size.width /
                                        10 *
                                        5,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen()));
                                          },
                                          child: Image.asset(
                                            meetups[index],
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ),
                                );
                              }))
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
