import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class DescriptionScreen extends StatelessWidget {
  DescriptionScreen({super.key});
  final List<String> meetups = [
    "assets/meetups/meet2.png",
    "assets/meetups/meet3.png",
    "assets/meetups/meet1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Description',
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              //* App bar
              // AppBar(
              //   elevation: 0,
              //   surfaceTintColor: Colors.transparent,
              //   backgroundColor: Colors.transparent,
              //   shadowColor: Colors.transparent,
              //   forceMaterialTransparency: true,
              //   leading: Icon(Icons.arrow_back_ios),
              //   title: Text(
              //     'Description',
              //     style: TextStyle(fontSize: 18),
              //   ),
              //   titleSpacing: 0,
              //   centerTitle: false,
              // ),
              Divider(
                color: Colors.grey[300],
                thickness: 2,
              ),

              //* Image Container
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 10 * 4.2,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10 * 3.5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: ImageSlideshow(
                            initialPage: 0,
                            indicatorColor: Colors.blue,
                            indicatorBackgroundColor: Colors.grey[200],
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
                      Container(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        height: MediaQuery.of(context).size.height / 10 * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.download),
                            Icon(Icons.bookmark),
                            Icon(Icons.favorite),
                            Icon(Icons.fullscreen),
                            Icon(Icons.star),
                            Icon(Icons.share),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //* save, likes & star count
              Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                child: Row(
                  children: [
                    const Icon(Icons.bookmark_outline),
                    const Text("1034"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.favorite_border),
                    const Text("1034"),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 1, right: 3, left: 3),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue[500],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue[400],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue[300],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue[200],
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 0.35,
              ),

              //*
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 10 * 1.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Actor Name',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[500],
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Indian Actress',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10 * 0.1,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Duration 20 Mins",
                              style: TextStyle(
                                fontSize: 12,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.folder_shared),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Total Average Fees ₹ 9,999",
                              style: TextStyle(
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //*About
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 10 * 2.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[500],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                          "In the heart of the bustling city, nestled between towering skyscrapers and bustling streets, lies a tranquil park. Lush greenery blankets the landscape, offering a sanctuary from the urban chaos. "),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text("See More",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue[500],
                                    fontWeight: FontWeight.bold)),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
