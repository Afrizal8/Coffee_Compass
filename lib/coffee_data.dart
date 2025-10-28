class Coffee {
  final String name;
  final String image;
  final String description;

  Coffee({required this.name, required this.image, required this.description});
}

final List<Coffee> coffeeList = [
  Coffee(
    name: "Espresso",
    image: "assets/images/espresso.jpg",
    description:
        "Espresso adalah kopi pekat yang diseduh dengan tekanan tinggi. Biasanya menjadi dasar untuk minuman kopi lain.",
  ),
  Coffee(
    name: "Cappuccino",
    image: "assets/images/cappuccino.jpg",
    description:
        "Campuran espresso, susu panas, dan buih susu yang lembut. Populer di seluruh dunia.",
  ),
  Coffee(
    name: "Latte",
    image: "assets/images/latte.jpg",
    description:
        "Latte memiliki lebih banyak susu dibanding cappuccino, dengan rasa lembut dan creamy.",
  ),
];
