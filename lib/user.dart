class User {
  final String image_user;
  final String category;
  final String detail;
  final String image;
  final String shortdetail;

  User(this.image, this.category, this.detail, this.image_user, this.shortdetail);
  static final myUsers = <User>[
    User(
        "assets/türk.jpg",
        "Turkısh Cuisine",
        "Turkish cuisine; molasses, yogurt, bulgur etc. It has also revealed its own unique types of healthy food, such as",
        "assets/image3.jpg",
        "Beaitiful cuisine"),
    User(
        "assets/alman.jpg",
        "German Cuisine",
        "Geleneksel Almanya mutfağı içinde öğle yemeklerinde ana yemeklere yer verildiği için, hafif akşam yemekleri de oldukça yaygın. ",
        "assets/merkel.jpg",
        "Beaitiful cuisine"),
    User(
        "assets/çin.jpg",
        "Chinese Cuisine",
        "Çin mutfağı sebze ağırlıklıdır ama etler de az miktarda da olsa kullanılır.",
        "assets/cinbaskan.jpg",
        "Beaitiful cuisine"),
    User(
        "assets/ispanyol.jpg",
        "Spain Cuisine",
        "Yemek çeşitlerinin zenginliği ile bilinirler. Akdeniz iklimi hakim olduğu için, yemeklerde zeytinyağı mutlaka kullanılır.",
        "assets/ispanyabaskan.jpg",
        "Beaitiful cuisine"),
    User(
        "assets/italya.jpg",
        "Italy Cuisine",
        "İtalyan yemekleri çok sayıda meyve, sebze, sos ve et yemeğini içinde barındıran bir mutfaktır.",
        "assets/italyabaskan.jpg",
        "Beaitiful cuisine"),
    User(
        "assets/meksika.jpg",
        "Mexican Cuisine",
        "ülkenin mutfağında mısır, fasulye, meyve çeşitleri ve belirli sebze türleri önemli bir rol oynar.",
        "assets/meksikabaskan.jpg",
        "Beaitiful cuisine"),
  ];
}
