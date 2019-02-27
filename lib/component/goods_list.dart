import 'package:flutter/material.dart';
import 'package:netpx_flutter/detail.dart';

class GoodsList {
  BuildContext mContext;

  GridView build(BuildContext context) {
    mContext = context;

    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
        getGridCell("엘리트서바이벌 상품",
            "http://www.netpx.co.kr/images/goods_img/20171219/118833/118833_a_160.jpg"),
      ],
    );
  }

  /**
   * grid item
   */
//  Card getStructuredGridCell(name, image) {
//    return new Card(
//        elevation: 1.5,
//        child: new Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisSize: MainAxisSize.min,
//          verticalDirection: VerticalDirection.down,
//          children: <Widget>[
//            new Image.network(image),
//            new Center(
//              child: new Text(name),
//            ),
//          ],
//        ));
//  }

  GestureDetector getGridCell(name, image) {
    return new GestureDetector(
      onTap: () {
        debugPrint('click ' + name);
        Navigator.push(
          mContext,
          MaterialPageRoute(builder: (mContext) => Detail()),
        );
      },
      child: new Card(
          elevation: 1.5,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              new Image.network(image),
              new Center(
                child: new Text(name),
              ),
            ],
          )),
    );
  }
}
