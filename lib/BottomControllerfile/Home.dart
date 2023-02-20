import 'package:flutter/material.dart';

class Model {
  String? text;
  String? date;
  String? image_path;
  Model(this.text, this.date, this.image_path);
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Model model1 = Model("Online class routine", "Save date: 10/12/22", "assets/class2.png");
  Model model2 = Model("Office work list", "save date : 15/12/22", "assets/class1.png");
  Model model3 = Model("Day work list", "Save date : 20/12/2", "assets/class2.png");

  List<Model> items = [];

  @override
  void initState() {
    super.initState();
    items.add(model1);
    items.add(model2);
    items.add(model3);
  }
  // List<Map> items = [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 16,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Hi, Habib 👋",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Let’s explore your notes",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white60),
                                    ),
                                  ],
                                ),
                                Image.asset("assets/profile.png"),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: const Color.fromRGBO(255, 255, 255, 0.1),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Welcome to TickTick Task",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const Text(
                                      "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white60),
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {},
                                          color: Colors.lightGreen,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Watch Video",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        Image.asset("assets/pic.png")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Reminder Task",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "See all",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      child: Container(
                        height: 112,
                        width: MediaQuery.of(context).size.width,
                        child: Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                       Image.asset(items[index].image_path.toString()),

                                       // Icon(Icons.list_alt, size: 40, color: Colors.orange,),
                                        Text(
                                          items[index].text.toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          items[index].date.toString(),
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "All task",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("See all")),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        padding: const EdgeInsets.only(top: 8),
                        itemBuilder: (c, i) {
                          return Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const ListTile(
                              title: Text("Online Class Routine"),
                              subtitle: Text("20/02/23"),
                              leading: Icon(
                                Icons.list_alt,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//child: Row(

//children: [

//Image.asset("assets/Frame1.png",),
//Image.asset("assets/Frame 2.png",),
//Image.asset("assets/Frame1.png",)
//],
//),
//child: ListView(
//scrollDirection: Axis.horizontal,
//padding: EdgeInsets.zero,
//children: [
//Image.asset("assets/Frame1.png",),
//Image.asset("assets/Frame 2.png",),
//Image.asset("assets/Frame1.png",)
//],
//),
