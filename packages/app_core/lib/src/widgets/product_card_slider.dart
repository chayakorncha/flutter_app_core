import 'package:app_core/app_core.dart';

/// AOF 20 10 2021
/// ใช้แสดงผล widget product card slide ซ้าย-ขวา เหมาะสำหรับแสดงกลุ่มสินค้าที่แบ่งเป็นหมวด ๆเช่น โปรโมชั่น,สินค้าแนะนำ,กลุ่มสินค้าฯลฯ
/// สามารถส่ง event เข้ามาเป็น Function ผ่าน VoidCallback เพื่อไปใช้ต่อได้
/// Banner สามารถโยน Url ไฟล์รูปเข้ามาพร้อม พร้อมกับ Event นำไปใช้ต่อ
/// Example :
/// ```dart
/// ProductCardSlider(
/// title: 'น้ำสิงห์',
/// titleSeeMore: 'ดูทั้งหมด',
/// products: _productList,
///   onPressedSeeMore: () => print('Tab See more สินค้าแนะนำ...'),
///     bannerUrl:
///       'https://www.dev-caninnovation.com/DBO_DUMEX/pic.aspx?p=singhawater-banner.jpeg',
///           onTabBanner: () => print('Tab banner สินค้าแนะนำ'),
///       ),
/// ```
class ProductCardSlider extends StatelessWidgetApp {
  const ProductCardSlider(
      {Key? key,
      this.onPressedSeeMore,
      required this.products,
      required this.title,
      required this.titleSeeMore,
      this.bannerUrl,
      this.onTabBanner})
      : super(key: key);
  final VoidCallback? onPressedSeeMore;
  final VoidCallback? onTabBanner;
  final List<Product> products;
  final String title;
  final String titleSeeMore;
  final String? bannerUrl;

  @override
  Widget build(BuildContext context) {
    if (products.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          if (bannerUrl != null) _buildBanner(context),
          SizedBox(
            height: appDimension.sizeH_230,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductCard(products[index]),
              separatorBuilder: (_, index) => SizedBox(
                width: appDimension.sizeW_4,
              ),
              itemCount: products.length,
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _buildBanner(BuildContext context) {
    return GestureDetector(
      onTap: onTabBanner,
      child: SizedBox(
        height: appDimension.sizeW_130, // * 1.15,
        width: double.infinity,
        child: ClipRRect(
          child: Image.network(
            //'${NetworkAPI.imageUrl}/${product.image}',
            bannerUrl!,
            errorBuilder: (context, _, stack) => const ImageNotFound(),
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: appDimension.size_10, vertical: appDimension.size_10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: appStyle.textTitleSeeMore(context),
              ),
              ButtonSeeMore(
                title: titleSeeMore,
                onPressedSeeMore: onPressedSeeMore,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
