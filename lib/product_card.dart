import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'module/date_base.dart';
import 'favorite_product.dart';
import 'shop_list.dart';
import 'making_an_order.dart';

class ProductCard extends StatefulWidget {
  final int id;
  //MyWidget({this.id});
  const ProductCard({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int activeIndex = 0;
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: catalogCars[widget.id].linkYoutube,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      //Верхняя панель
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 24, 25, 26),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                maxLines: 2,
                catalogCars[widget.id].name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Actay',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    decoration: TextDecoration.none),
              ),
            )
          ],
        ),
      ),
      //Список товаров
      body: SingleChildScrollView(
        child: Card(
          color: const Color.fromARGB(255, 24, 25, 26),
          child: Column(
            children: [
              //ФОТОГРФИИ МАШИНЫ
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
                itemCount: catalogCars[widget.id].carsPhoto.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: Image.asset(catalogCars[widget.id].carsPhoto[index]),
                  );
                },
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //ИНДИКАТОР
              AnimatedSmoothIndicator(
                effect: const ScaleEffect(
                    activeStrokeWidth: 0.2,
                    activeDotColor: Colors.white,
                    dotColor: Color.fromARGB(255, 63, 63, 63)),
                activeIndex: activeIndex,
                count: catalogCars[widget.id].carsPhoto.length,
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory),
                    icon: Icon(
                      Icons.favorite,
                      size: 32,
                      color: true == favoriteList.contains(widget.id)
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 136, 136, 136),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          if (false == favoriteList.contains(widget.id)) {
                            favoriteList.add(widget.id);
                            isTap = true;
                          } else if (true == favoriteList.contains(widget.id)) {
                            isTap = false;
                            favoriteList.remove(widget.id);
                          }
                        },
                      );
                    },
                  ),
                  TextButton(
                    style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory),
                    onPressed: () {
                      setState(
                        () {
                          if (false == favoriteList.contains(widget.id)) {
                            favoriteList.add(widget.id);
                            isTap = true;
                          } else if (true == favoriteList.contains(widget.id)) {
                            isTap = false;
                            favoriteList.remove(widget.id);
                          }
                        },
                      );
                    },
                    child: Text(
                      "Добавить в избранное ",
                      style: TextStyle(
                          color: true == favoriteList.contains(widget.id)
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 16,
                          fontFamily: 'Actay',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //ЦЕНА
              Text(
                "${catalogCars[widget.id].price.toString()} Рублей",
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 32,
                    fontFamily: 'Actay',
                    height: 0,
                    decoration: TextDecoration.none),
              ),

              //ОТСТУП
              const SizedBox(
                height: 4,
              ),

              //ОПИСАНИЕ
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  catalogCars[widget.id].discription,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Actay',
                      height: 0,
                      decoration: TextDecoration.none),
                ),
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // BUTTON В КОРЗИНУ
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      backgroundColor: const Color.fromARGB(255, 255, 79, 25),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "В корзину",
                          style: TextStyle(
                            fontFamily: 'Actay',
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      shopList.add(widget.id);
                    },
                  ),

                  // ОТСТУП
                  const SizedBox(
                    width: 16,
                  ),

                  // BUTTON В ОДИН КЛИК
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Color.fromARGB(255, 25, 25, 25),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "В один клик",
                          style: TextStyle(
                            fontFamily: 'Actay',
                            fontSize: 16,
                            color: Color.fromARGB(255, 25, 25, 25),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakingAnOrder(
                            sum: catalogCars[widget.id].price,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),

                  //add to favorite
                ],
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //ВИДОСИК
              YoutubePlayer(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
