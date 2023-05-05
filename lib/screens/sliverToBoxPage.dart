import 'package:flutter/material.dart';

class SliverToBoxscreen extends StatefulWidget {
  const SliverToBoxscreen({super.key});

  @override
  State<SliverToBoxscreen> createState() => _SliverToBoxscreenState();
}

class _SliverToBoxscreenState extends State<SliverToBoxscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Sliver Box Adapter'),
            floating: true,
            // expandedHeight: 120,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
                              fit: BoxFit.fill)),
                      child: Center(
                        child: Text('Sliver to box Adapter 1'),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
                            fit: BoxFit.fill)),
                    child: Center(
                      child: Text('Sliver to box Adapter 2'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg')),
                  title: Text('Item $index'),
                  subtitle: Text('sub-title'),
                  trailing: Text('5:30 P.M'),
                ),
              );
            }, childCount: 20)),
          )
        ],
      ),
    );
  }
}
