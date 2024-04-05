import 'package:flutter/material.dart';
import 'widgets/drawer_item.dart';
import 'widgets/home_category.dart';
import 'widgets/items.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
                backgroundColor: Colors.grey.shade800,
                child: const Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 25, left: 15, bottom: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Text(
                                  "R",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rohan Chhetri",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "View Profile",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: SizedBox(
                            child: Column(
                              children: [
                                DrawerItems(
                                  icon: Icons.home,
                                  name: "Home",
                                ),
                                DrawerItems(
                                    icon: Icons.electric_bolt_rounded,
                                    name: "Discover"),
                                DrawerItems(
                                  icon: Icons.settings,
                                  name: "Setting",
                                ),
                                DrawerItems(
                                  icon: Icons.history,
                                  name: "History",
                                ),
                                DrawerItems(
                                  icon: Icons.logout,
                                  name: "Login",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            body: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Builder(builder: (BuildContext context) {
                          return IconButton(
                            icon: const CircleAvatar(
                              radius: 18,
                              child: Text("R"),
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          );
                        }),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(26, 189, 83, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 7, left: 15, bottom: 7, right: 15),
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const HomeCategories(
                          name: "Music",
                        ),
                        const HomeCategories(
                          name: "Podcast",
                        ),
                        const HomeCategories(
                          name: "Audiobook",
                        ),
                        const HomeCategories(
                          name: "Pop",
                        ),
                        const HomeCategories(
                          name: "Nephop",
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CategoryItem(
                                image: AssetImage("lib/assets/SwopnaSuman.jpg"),
                                singers: "Purna Rai, Samir Acharya",
                              ),
                              CategoryItem(
                                image: AssetImage("lib/assets/PurnaRai.jpg"),
                                singers: "Lorem Lorem lorem Purna Rai",
                              ),
                              CategoryItem(
                                image: AssetImage("lib/assets/NJK.jpg"),
                                singers: "Purna Rai",
                              ),
                            ]),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
