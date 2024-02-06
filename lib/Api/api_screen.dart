// ignore_for_file: avoid_print

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Api/Api_user.dart';
import 'package:instagram/Api/api_service.dart';

class api_screen extends StatefulWidget {
  const api_screen({super.key});

  @override
  State<api_screen> createState() => _api_screenState();
}

class _api_screenState extends State<api_screen> {
  final Api_service service = Api_service();
  late Future<ApiUser> futureData;

  @override
  void initState() {
    super.initState();
    futureData = Api_service.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/insta.png",
                  height: 53,
                  color: Colors.white,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/left.png',
                      height: 20,
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/heart.png',
                      height: 22,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/messenger.png',
                      height: 22,
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: Api_service.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}',style: TextStyle(color: Colors.white),);
            } else {
              final List<Result> data = snapshot.data!.results;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];

                    return Container(
                      height: 690,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      padding: const EdgeInsets.all(3),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xFF9B2282),
                                              Color(0xFFEEA863),
                                            ],
                                          )),
                                      child: Container(
                                        width: 105,
                                        height: 225,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 1,
                                            ),
                                          ],
                                          // image: DecorationImage(
                                          //    image: NetworkImage(item.picture.thumbnail),
                                          //     ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${item.name.first}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PopupMenuButton(
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ), //don't specify icon if you want 3 dot menu
                                    color: Colors.black,
                                    itemBuilder: (context) => [
                                      const PopupMenuItem<int>(
                                        value: 0,
                                        child: Text(
                                          "Setting",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      const PopupMenuItem<int>(
                                        value: 0,
                                        child: Text(
                                          "Share ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                    onSelected: (item) => {print(item)},
                                  ),
                                  // IconButton(
                                  //   onPressed: () {},
                                  //   icon: const ImageIcon(
                                  //       AssetImage(
                                  //         'assets/dots.png',
                                  //       ),
                                  //       color: Colors.white,
                                  //       size: 20),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),

                          //    **** POSTS
                          Padding(
                            padding:const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: SizedBox(
                              height: 350,
                              width: MediaQuery.of(context).size.width,
                              child:  CachedNetworkImage(
                imageUrl: item.picture.large,fit:BoxFit.fill,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
                            ),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          //     **** LIKES COMMENTS SHARE

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                        AssetImage(
                                          'assets/heart.png',
                                        ),
                                        color: Colors.white,
                                        size: 25),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                        AssetImage(
                                          'assets/chat.png',
                                        ),
                                        color: Colors.white,
                                        size: 30),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                        AssetImage(
                                          'assets/send.png',
                                        ),
                                        color: Colors.white,
                                        size: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                        AssetImage(
                                          'assets/save.png',
                                        ),
                                        color: Colors.white,
                                        size: 25),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
