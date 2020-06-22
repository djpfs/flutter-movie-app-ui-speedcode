import 'package:flutter/material.dart';
import 'package:movie_app_yt/utils/movies.dart';
import 'package:movie_app_yt/utils/style.dart';

Style style = new Style();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: style.bg,
        appBar: AppBar(
          backgroundColor: style.bg,
          elevation: 0,
          leading: Icon(
            Icons.list,
            color: style.primary,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.search,
                color: style.primary,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CategorySeparator(
                  title: 'New Releases',
                ),
                Text(
                  'Catch the latest movies',
                  style: TextStyle(
                      color: style.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: 180,
                  child: ListView.builder(
                    itemCount: action.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/${action[index]}',
                                width: 170,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: style.bg,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(Icons.favorite,
                                      color: (index % 2) == 0
                                          ? style.accent
                                          : style.primary,
                                      size: 15),
                                )),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text('Filme filme filme',
                                    style: TextStyle(
                                        color: style.primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)))
                          ]));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CategorySeparator(
                  title: 'Comedy movies',
                ),
                Text(
                  'Catch the latest movies',
                  style: TextStyle(
                      color: style.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: 180,
                  child: ListView.builder(
                    itemCount: comedy.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/${comedy[index]}',
                                width: 170,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: style.bg,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(Icons.favorite,
                                      color: (index % 2) == 0
                                          ? style.accent
                                          : style.primary,
                                      size: 15),
                                )),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text('Filme filme filme',
                                    style: TextStyle(
                                        color: style.primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)))
                          ]));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CategorySeparator(
                  title: 'Animated movies',
                ),
                Text(
                  'Catch the latest movies',
                  style: TextStyle(
                      color: style.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: 180,
                  child: ListView.builder(
                    itemCount: animated.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/${animated[index]}',
                                width: 170,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: style.bg,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(Icons.favorite,
                                      color: (index % 2) == 0
                                          ? style.accent
                                          : style.primary,
                                      size: 15),
                                )),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text('Filme filme filme',
                                    style: TextStyle(
                                        color: style.primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)))
                          ]));
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class CategorySeparator extends StatelessWidget {
  final String title;

  CategorySeparator({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: style.primary, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          'View all',
          style: TextStyle(
              color: style.secondary,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
