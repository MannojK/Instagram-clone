import 'package:flutter/material.dart';


class MyHome extends StatelessWidget {
  // Simulate fetching data from a Future.
  Future<List<String>> fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulated delay
    return List<String>.generate(100, (index) => 'Item $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar Example'),
                
            ),
          ),
          FutureBuilder<List<String>>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SliverToBoxAdapter(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return SliverToBoxAdapter(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                        title: Text('kj'),
                      );
                    },
                    childCount: 18,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
