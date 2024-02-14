import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios),
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 10 * 4.2,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10 * 3.5,
                        color: Colors.grey[300],
                        child: Placeholder(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10 * 0.5,
                        color: Colors.grey[300],
                        child: Row(
                          children: [Icon(Icons.download)],
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
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1, bottom: 1, right: 3, left: 3),
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 10 * 1.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Actor Name',
                        style: TextStyle(fontSize: 20, color: Colors.blue[500], fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 20, color: Colors.blue[500], fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                          "In the heart of the bustling city, nestled between towering skyscrapers and bustling streets, lies a tranquil park. Lush greenery blankets the landscape, offering a sanctuary from the urban chaos. "),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text("See More",
                                style: TextStyle(fontSize: 18, color: Colors.blue[500], fontWeight: FontWeight.bold)),
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
