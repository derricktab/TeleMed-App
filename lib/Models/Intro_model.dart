class Items {
  final String img;
  final String title;
  final String subTitle;
  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "assets/1.png",
    title: "Discover the best doctors around you",
    subTitle: "There are over 100 professional doctors partnering with us.",
  ),
  Items(
    img: "assets/2.png",
    title: "Get Medical Help at your home.",
    subTitle: "This Tele Medical App help you to get Medical Help at the comfort of your home",
  ),
  Items(
    img: "assets/3.png",
    title: "Find doctors around you",
    subTitle: "Make your health a priority by getting the help you need",
  ),
];
