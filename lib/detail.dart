import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("상품상세"),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.network('http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg')
          ],
        ),
      ),
    );
  }
}
