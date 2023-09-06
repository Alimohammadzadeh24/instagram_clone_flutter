import 'package:flutter/material.dart';
import 'package:instgram_clone/constant/Colors.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var CategoryItemsList = [
    'All',
    'Account',
    'Hashtag',
    'Caption',
    'Story',
    'Comment'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 12),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: lightPrimaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/icons/icon_serach_shareBox.png'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Serach...',
                              hintStyle: TextStyle(color: whiteColor),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/icon_scan.png'),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 28,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: CategoryItemsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(lightPrimaryColor),
                              minimumSize:
                                  MaterialStateProperty.all(Size(60, 28)),
                              maximumSize:
                                  MaterialStateProperty.all(Size(100, 28)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              )),
                          onPressed: () {},
                          child: Text(
                            CategoryItemsList[index],
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}