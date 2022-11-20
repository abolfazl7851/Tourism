import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism/datas/Item.dart';
import 'package:tourism/ui/ui_helper/CustomImage.dart';
import 'package:tourism/ui/ui_helper/DetailImageView.dart';
import 'package:tourism/ui/ui_helper/Routing.dart';

class DetailPage extends StatefulWidget {
  Item item;

  DetailPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PageController _pageViewController = PageController(
    initialPage: 0,
  );

  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Stack(
              children: [
                DetailImageView(
                  controller: _pageViewController,
                  album: widget.item.album,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: SmoothPageIndicator(
                      controller: _pageViewController,
                      count: widget.item.album.length,
                      effect: const ExpandingDotsEffect(
                          dotWidth: 13,
                          dotHeight: 13,
                          dotColor: Color(0xffe8c293),
                          activeDotColor: Color(0xffe8c293)),
                      onDotClicked: (index) =>
                          _pageViewController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      widget.item.name,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/pin-area.svg",
                          color: const Color(0xff292038),
                          width: 15,
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7),
                          child: Text(
                            widget.item.type,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.brown, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      margin: EdgeInsets.only(right: 7),
                      child: Text(
                        widget.item.description,
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 50,left: 10,right: 10),
                      child: ElevatedButton(
                          onPressed: () {

                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Routing(item: widget.item)));
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 10,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(7.0),
                                // side: BorderSide(color: Color(0xff292038)),
                              ),
                              primary: Color(0xffe8c293)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.room_outlined,size: 35,color: Color(0xff292038)),
                                Text('روی نقشه نشونم بده',style: TextStyle(fontSize: 20,color: Color(0xff292038),fontWeight: FontWeight.w700),),
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
          // widget.item.album[index]=widget.item.image;
          // widget.item.image=widget.item.album[index];
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(7),
          border: Border.all(
              width: 3,
              color: Color(0xffe8c293)
                  .withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: CachedNetworkImage(
            fadeInDuration: const Duration(milliseconds: 500),
            height: 50,
            width: 70,
            imageUrl: widget.item.album[index],
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            }),
      ),
    );
  }
}
