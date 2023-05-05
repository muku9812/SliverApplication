import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBy-SPEG2o-OVPIDv5BtFuPiSLYsk-rJIVvf6Mfzf&s',
    'https://media.istockphoto.com/id/157186300/photo/italian-vintage-scooter-in-rome-italy.jpg?s=612x612&w=0&k=20&c=WsyWTGUZnhkfSIZXTVE2Rg3Qxecz-tvIalHyoaAanpU=',
    'https://www.honda2wheelersindia.com/assets/images/accessories/Scooter/grazia2021_2.jpg',
    'https://imgd.aeplcdn.com/370x208/n/cw/ec/44686/activa-6g-right-front-three-quarter.jpeg?q=75',
    'https://cdn.pixabay.com/photo/2022/09/15/11/31/vespa-7456291__340.png',
    'https://images.unsplash.com/photo-1503434396599-58ba8a18d932?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2Nvb3RlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://static-01.daraz.com.np/p/509bf2de188ac2e09380947b7d2abd41.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaYh2CtKiT-4OoAEAvL7aHsZZJSP5BADfE2A&usqp=CAU',
    'https://4b4484781e2008fab587-e20327036cbb7cd3b54853c4c640b747.ssl.cf1.rackcdn.com/herowidget/5fb34c522a0ab7222c75e9d0/cat-home-splash-23-scooter.jpg',
    'https://dd5394a0b8ca8e97ba29-abf76f3d91a2125517d6c7c409f095c7.ssl.cf1.rackcdn.com/content/common/Models/2023/00948db9-09b6-4e41-8232-e63c421eadb3.png',
  ];

  List<String> name = [
    'Vespa',
    'Vespa',
    'Ray ZR',
    'Deo',
    'Yamaha',
    'Mahendra',
    'EV Scotter',
    'Rider',
    'Aprila',
    'Burgman'
  ];
  List<int> num = [10, 7, 9, 8];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      drawer: const Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('Sliver Application'),
            centerTitle: true,
            floating: true,
            flexibleSpace: Container(),
            expandedHeight: 100,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.more_vert),
              ),
            ],
            bottom: TabBar(
              onTap: (value) {
                setState(() {
                  _tabController.index;
                });
              },
              controller: _tabController,
              tabs: const <Widget>[
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                  child: Icon(Icons.message),
                ),
                Tab(
                  child: Icon(Icons.notification_add),
                ),
                Tab(
                  child: Icon(Icons.menu),
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75),
            delegate: SliverChildBuilderDelegate((context, index) {
              print(num[_tabController.index].toString());
              return Container(
                color: const Color.fromARGB(255, 111, 51, 51),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(images[index].toString()),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index].toString(),
                              style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(images[index].toString()),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index].toString(),
                              style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.overline),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(images[index].toString()),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index].toString(),
                              style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(images[index].toString()),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index].toString(),
                              style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }, childCount: num[_tabController.index]),
          )
        ],
      ),
    );
  }
}
