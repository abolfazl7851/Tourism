import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mapir_raster/mapir_raster.dart';
import "package:latlong2/latlong.dart";


import '../../datas/Item.dart';


class Routing extends StatefulWidget {
  Item item;
  Routing({Key? key,required this.item}) : super(key: key);
  @override
  _RoutingState createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: MapirMap(
        apiKey: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImM2ZDZmMDkwNDBmMGQzN2YzOWJmYWQ3YjZhYjMxM2U1MmU0ODcwYmY3ZjE0ZDY1ZDEwYTliNjgyN2VmMzhhZTIxZTcyZWRkM2ZjYzA4ZGZhIn0.eyJhdWQiOiIyMDA0NiIsImp0aSI6ImM2ZDZmMDkwNDBmMGQzN2YzOWJmYWQ3YjZhYjMxM2U1MmU0ODcwYmY3ZjE0ZDY1ZDEwYTliNjgyN2VmMzhhZTIxZTcyZWRkM2ZjYzA4ZGZhIiwiaWF0IjoxNjY4ODMxNzA0LCJuYmYiOjE2Njg4MzE3MDQsImV4cCI6MTY3MTMzNzMwNCwic3ViIjoiIiwic2NvcGVzIjpbImJhc2ljIl19.ThNiW-8c_vuxL08vsgfTTY_ezc-LdIQHQ9elvMiSgSvnNPhvIgwwLZGscXOgNtu1DRpPdiei5b791XRfYbllvx3o6yxfKF-VdMI3p5g9Dgm6ivMV1C0354FIJlbqtmFa3-JPwq-oeNzIcKA98DLfFeWovZWQT7FnCCBnf634JWPUVxG64dhuaco3yO_WFZ0L5tywEPnGt1XeSwbQosPHUxrw5CcZi6rbGvB4wgS0AR70IjHgVa0pgK89uL1iaJ4KHrpDBAA54qtyOnNZpEv2Uw_HXM61Rt3tay4XQBBWMF9kLkpT-RInrQhlx-Z673SyHod0oIgFMioTtRFec85ITg',
        options: MapOptions(
          center: LatLng(widget.item.latitude, widget.item.longitude),
          zoom: 16.0,
        ),
        layers: [
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(widget.item.latitude, widget.item.longitude),
                builder: (ctx) => new Icon(Icons.location_on, size: 40.0,
                    color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }



}
