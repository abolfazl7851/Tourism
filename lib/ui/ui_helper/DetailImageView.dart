
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourism/datas/data.dart';


class DetailImageView extends StatefulWidget {
  var controller;
  List<String> album ;
  DetailImageView({Key? key, required this.controller,required this.album}) : super(key: key);

  @override
  _DetailImageViewState createState() => _DetailImageViewState();
}

class _DetailImageViewState extends State<DetailImageView> {


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        ...List.generate(widget.album.length, (index) => myPages(widget.album[index]))
      ],
    );
  }

  Widget myPages(String image){
    return CachedNetworkImage(imageUrl: image,fit: BoxFit.fill,);
  }

}