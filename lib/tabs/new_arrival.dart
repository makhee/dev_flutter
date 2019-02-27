import 'package:flutter/material.dart';
import 'package:netpx_flutter/component/goods_list.dart';

/**
 * https://github.com/nisrulz/flutter-examples/tree/master/grid_layout
 */

class NewArrival extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Container(
      child: new GoodsList().build(context),
    );
  }
}