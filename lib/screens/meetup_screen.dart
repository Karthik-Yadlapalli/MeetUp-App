import 'package:flutter/material.dart';

class MeetUpScreen extends StatelessWidget {
  const MeetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //* App bar
          AppBar(
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            forceMaterialTransparency: true,
            leading: Icon(Icons.arrow_back_ios),
            title: Text(
              'Individual MeetUp',
              style: TextStyle(fontSize: 18),
            ),
            titleSpacing: 0,
            centerTitle: false,
          ),
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
                border: Border.all(color: Color.fromARGB(230, 9, 113, 239)!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height / 10 * 0.08,
                      vertical: MediaQuery.of(context).size.height / 10 * 0.05,
                    ),
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic)),
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
              child: Placeholder(),
            ),
          ),

          //* Trending people Container
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height / 10 * 0.08,
                right: MediaQuery.of(context).size.height / 10 * 0.08,
                bottom: MediaQuery.of(context).size.height / 10 * 0.16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 10 * 2.2,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
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
                                left: MediaQuery.of(context).size.height / 10 * 0.08,
                                right: MediaQuery.of(context).size.height / 10 * 0.08,
                                top: MediaQuery.of(context).size.height / 10 * 0.08,
                                bottom: MediaQuery.of(context).size.height / 10 * 0.16),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 10 * 1.8,
                              width: MediaQuery.of(context).size.width / 10 * 8,
                              color: Colors.grey[100],
                              child: Placeholder(),
                            ),
                          );
                        })),
              ]),
            ),
          ),

          //*Trending Meatups
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 10 * 2.5,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Top Trending Meetups", style: TextStyle(fontSize: 18)),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.width / 10 * 5,
                              width: MediaQuery.of(context).size.width / 10 * 5,
                              color: Colors.grey[100],
                              child: Placeholder(),
                            ),
                          );
                        }))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
