import '../models/product_model.dart';

class ProductData {
  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      name: "اسپرسو",
      category: "قهوه دمی",
      description:
          "یک قهوه غلیظ و قوی است که با عبور آب داغ تحت فشار از پودر قهوه فشرده تهیه می‌شود. معمولاً در فنجان کوچک سرو می‌شود و پایه‌ی بسیاری از نوشیدنی‌های دیگر قهوه مثل کاپوچینو و لاته است.",
      price: 25000,
      image: "assets/images/products/espresso.png",
      size: "330 ml",
    ),
    ProductModel(
      id: 2,
      name: "لاته",
      category: "نسکافه",
      description: 'قهوه فوری است که از عصاره قهوه خشک شده ساخته می‌شود و به‌سرعت با آب داغ یا شیر قابل آماده‌سازی است. طعمی ملایم دارد و گزینه‌ای راحت برای مصرف روزمره است.',
      price: 32000,
      image: "assets/images/products/espresso.png",
      size: "300 ml",
    ),
    ProductModel(
      id: 3,
      name: "موکا",

      category: "قهوه سرد",
      description:
          'نوشیدنی قهوه‌ای شیرین است که ترکیبی از اسپرسو، شکلات (شیر یا شربت شکلات) و شیر بخار داده شده دارد. طعمی شکلاتی و ملایم دارد و برای کسانی که دوست دارند قهوه‌شان شیرین و نرم باشد، محبوب است.',
      price: 28000,
      image: "assets/images/products/espresso.png",
      size: "350 ml",
    ),
    ProductModel(
      id: 4,
      name: "دمنوش آرامش",
      category: "دمنوش",
      description:
          'نوشیدنی گیاهی فاقد کافئین که معمولاً از ترکیب گیاهانی مثل گل‌گاوزبان، بابونه، اسطوخودوس یا سنبل الطیب تهیه می‌شود. به کاهش استرس و ایجاد حس آرامش کمک می‌کند و برای مصرف شبانه مناسب است.',
      price: 18000,
      image: "assets/images/products/espresso.png",
      size: "400 ml",
    ),
  ];
}
