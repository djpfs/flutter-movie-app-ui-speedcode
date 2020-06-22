import 'package:flutter/material.dart';
import 'package:movie_app_yt/utils/style.dart';

Style style = new Style();

class DetailPage extends StatelessWidget {
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
        body: Container());
  }
}
