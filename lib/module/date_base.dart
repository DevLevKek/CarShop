// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:app/module/date_base.dart';
int selectIndex = -1;

class cars {
  int id;
  String name;
  double price;
  String complect;
  String discription;
  List<String> carsPhoto;
  String linkYoutube;

  cars(this.id, this.name, this.price, this.complect, this.discription,
      this.carsPhoto, this.linkYoutube);
}

List<cars> catalog_cars = [
  cars(
    1,
    "GRANTA СЕДАН",
    699900,
    "Standard",
    "Современный, рациональный, комфортный. Седан со вместительным багажником, который гармонично вписан в стремительную форму кузова. Как тот самый костюм, который подходит к любой фигуре. Как фильм, который видели все: всегда интересный и по-новому актуальный.",
    [
      "lib/image/GRANTA СЕДАН/GRANTA СЕДАН.png",
      "lib/image/GRANTA СЕДАН/GRANTA СЕДАН 01.png",
      "lib/image/GRANTA СЕДАН/GRANTA СЕДАН 02.png",
    ],
    "EJB6SRAJqNg",
  ),
  cars(
    2,
    "LADA GRANTA CROSS",
    945900,
    "Comfort Light",
    "Там, где кончается дорога, начинается настоящая жизнь. Это прекрасно знает автомобиль, заряженный энергией кроссовера. Энергией открывать, достигать, внушать уверенность каждым элементом дизайна. 198 миллиметров клиренса, прочный обвес кузова, рейлинги — это и функционал, и часть внедорожного образа.",
    [
      "lib/image/LADA GRANTA CROSS/LADA GRANTA CROSS.png",
      "lib/image/LADA GRANTA CROSS/LADA GRANTA CROSS 01.png",
      "lib/image/LADA GRANTA CROSS/LADA GRANTA CROSS 02.png",
    ],
    "O_Dw-3NOzDk",
  ),
  cars(
    3,
    "LADA GRANTA DRIVE ACTIVE",
    1034900,
    "Comfort",
    "Заниженный силуэт, гармоничные пропорции. Комбинация чёрного глянца и полированного металла, рельефная поверхность обвеса и красная линия на бамперах — как магнит для восхищенных взглядов. Именно так выглядит заводской тюнинг, рожденный опытом гонок и работой в аэродинамической трубе.",
    [
      "lib/image/LADA GRANTA DRIVE ACTIVE/LADA GRANTA DRIVE ACTIVE.png",
      "lib/image/LADA GRANTA DRIVE ACTIVE/LADA GRANTA DRIVE ACTIVE 01.png",
      "lib/image/LADA GRANTA DRIVE ACTIVE/LADA GRANTA DRIVE ACTIVE 02.png",
    ],
    "6Obwpl3u7rg",
  ),
  cars(
    4,
    "LADA NIVA LEGEND 3 ДВ",
    1239900,
    "Classic",
    "Проходимость и компактность - эти качества востребованы и в крупных городах. Именно поэтому пользуется успехом LADA Urban. Для этого обитателя каменных джунглей особенно актуальны новые системы комфорта и безопасности, которые получило все семейство LADA Niva Legend.",
    [
      "lib/image/LADA NIVA LEGEND 3 ДВ/LADA NIVA LEGEND 3 ДВ.png",
      "lib/image/LADA NIVA LEGEND 3 ДВ/LADA NIVA LEGEND 3 ДВ 01.png",
      "lib/image/LADA NIVA LEGEND 3 ДВ/LADA NIVA LEGEND 3 ДВ 02.png",
    ],
    "KbqMIcIRkDw",
  ),
  cars(
    5,
    "LADA NIVA TRAVEL",
    1198900,
    "Classic",
    "Легендарный автомобиль гармонично смотрится и среди лесов, и на городских улицах. Чуть сглаженная угловатость, выразительные формы кузова, яркая светотехника, пластиковый обвес кузова — решительный характер автомобиля отражен в каждой детали.",
    ["lib/image/LADA NIVA TRAVEL/LADA NIVA TRAVEL.png",
    "lib/image/LADA NIVA TRAVEL/LADA NIVA TRAVEL 01.png",
    "lib/image/LADA NIVA TRAVEL/LADA NIVA TRAVEL 02.png",],
    "kuEOwvTmu74",
  ),
  cars(
    6,
    "LADA VESTA CROSS",
    1733900,
    "Life",
    "Уникальный дизайн LADA Vesta Cross новое поколение стал более энергичным. Развитый рельеф бамперов создает современный и динамичный образ автомобиля, а новая светодиодная оптика делает его по-настоящему заметным.",
    ["lib/image/LADA VESTA CROSS/LADA VESTA CROSS.png",
    "lib/image/LADA VESTA CROSS/LADA VESTA CROSS 01.png",
    "lib/image/LADA VESTA CROSS/LADA VESTA CROSS 02.png",],
    "1XJTzt33pqM",
  ),
  cars(
    7,
    "LADA VESTA SW CROSS",
    1511900,
    "Comfort",
    "Внедорожный, спортивный, контрастный — вот фирменный стиль LADA Vesta SW Cross новое поколение. Развитый рельеф бамперов создает современный и динамичный образ автомобиля, а новая светодиодная оптика делает его еще более ярким.",
    ["lib/image/LADA VESTA SW CROSS/LADA VESTA SW CROSS.png",
    "lib/image/LADA VESTA SW CROSS/LADA VESTA SW CROSS 01.png",
    "lib/image/LADA VESTA SW CROSS/LADA VESTA SW CROSS 02.png",],
    "1XJTzt33pqM",
  ),
];
