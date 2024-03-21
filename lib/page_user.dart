import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/date_base.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyWidget extends StatefulWidget {
  final int id;
  //MyWidget({this.id});
  const MyWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: catalog_cars[widget.id].linkYoutube,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    return Scaffold(
      //Верхняя панель
      appBar: AppBar(title: Text(catalog_cars[widget.id].name)),
      //Список товаров
      body: Card(
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (boba, reason) {
                  setState(() {
                    activeIndex = boba;
                  });
                },
              ),
              itemCount: catalog_cars[widget.id].carsPhoto.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Image.asset(catalog_cars[widget.id].carsPhoto[index]),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: catalog_cars[widget.id].carsPhoto.length,
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              margin: EdgeInsets.all(15.0),
              height: 120,
              padding: EdgeInsets.all(3.0),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      catalog_cars[widget.id].discription,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              catalog_cars[widget.id].price.toString() + " Рублей",
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            YoutubePlayer(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
