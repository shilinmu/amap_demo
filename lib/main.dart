import 'package:amap_flutter_map/amap_flutter_map.dart';

import 'package:flutter/material.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';

class AMapDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoWidget();
  }
}

class DemoWidget extends State<AMapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('高德地图示例')),
      body: Container(
        height: 500,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: AMapWidget(
                limitBounds: LatLngBounds(
                  southwest: const LatLng(39.83309, 116.290176),
                  northeast: const LatLng(39.99951, 116.501663),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 10,
              right: 10,
              height: 300,
              child: Container(
                height: 200,
                color: Colors.yellowAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  // debugProfileBuildsEnabled = true;
  // debugProfilePaintsEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  runApp(MaterialApp(home: AMapDemo()));
}
