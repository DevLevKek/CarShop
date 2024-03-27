// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/date_base.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_application_1/favotite_page.dart';
import 'package:flutter_application_1/shopping_cart_page.dart';

class MyWidget extends StatefulWidget {
  final int id;
  //MyWidget({this.id});
  const MyWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int activeIndex = 0;
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: catalog_cars[widget.id].linkYoutube,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    return Scaffold(
        //Верхняя панель
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(catalog_cars[widget.id].name),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 32,
                      color: true == favoriteList.contains(widget.id)
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : const Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      setState(() {
                        if (false == favoriteList.contains(widget.id)) {
                          favoriteList.add(widget.id);
                          isTap = true;
                        } else if (true == favoriteList.contains(widget.id)) {
                          isTap = false;
                          favoriteList.remove(widget.id);
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_basket,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShopCar(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        //Список товаров
        body: SingleChildScrollView(
          child: Card(
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
                      child:
                          Image.asset(catalog_cars[widget.id].carsPhoto[index]),
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
                      border: Border.all(color: Colors.black, width: 1)),
                  margin: const EdgeInsets.all(8.0),
                  height: 120,
                  padding: const EdgeInsets.all(3.0),
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          catalog_cars[widget.id].discription,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "${catalog_cars[widget.id].price.toString()} Рублей",
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // shop button
                    ElevatedButton.icon(
                      onPressed: () {
                        //if (false == shopList.contains(activeIndex)) {
                        shopList.add(widget.id);
                        //}
                      },
                      label: const Text(
                        "Add to bascet",
                        style: TextStyle(fontSize: 16),
                      ),
                      icon: const Icon(
                        Icons.shopping_basket,
                        size: 32,
                      ),
                    ),

                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Buy now",
                        style: TextStyle(fontSize: 16),
                      ),
                      icon: const Icon(
                        Icons.add_card_rounded,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),

                    //add to favorite
                  ],
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
        ));
  }
}
