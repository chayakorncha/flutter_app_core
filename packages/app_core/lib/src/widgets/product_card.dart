import 'package:app_core/app_core.dart';

/// AOF 15 10 2021
/// ใช้แสดงผล widget product card
/// สามารถส่ง event เข้ามาเป็น Function ผ่าน VoidCallback เพื่อไปใช้ต่อได้
/// Example :
/// ```dart
/// itemBuilder: (context, index) => ProductCard(products[index]),
/// ```
class ProductCard extends StatelessWidgetApp {
  const ProductCard(this.product, {Key? key, this.onTab}) : super(key: key);

  final Product product;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () => print("Click Product Item ${product.productName}"),
          child: SizedBox(
            width: appDimension.sizeW_160,
            height: appDimension.sizeH_230,
            child: Card(
              elevation: appDimension.elevationSize_3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(appDimension.radiusSize_8),
              ),
              child: Column(
                children: [
                  _buildImage(context),
                  _buildInfo(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(appDimension.size_4),
          height: appDimension.sizeH_130,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(appDimension.size_8),
            child: product.picFileName?.isNotEmpty == true
                ? Image.network(
                    //'${NetworkAPI.imageUrl}/${product.image}',
                    'https://solblobqas.blob.core.windows.net/pictures/${product.picFileName}',
                    errorBuilder: (context, _, stack) => const ImageNotFound(),
                    width: double.infinity,
                    fit: BoxFit.fitHeight,
                  )
                : const ImageNotFound(),
          ),
        ),
        Positioned(
          right: appDimension.size_2,
          top: appDimension.size_2,
          child: ButtonFavorite(
            (valueChanged) => print('Is Favorite : $valueChanged'),
            //true or false by localstoreage
            //wait for imprement
            //isFavorite: true,
          ),
        ),
        if (product.promotionProduct.isNotEmpty)
          ChipAction(
              pressedChip: () => print("Click Chip Promotion"),
              bgColor: Colors.redAccent,
              borderColor: Colors.red,
              textColor: Colors.white,
              label: product.promotionProduct[0].promotionText ?? ""),
      ],
    );
  }

  Widget _buildInfo(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: appDimension.size_8, vertical: appDimension.size_8),
            child: Text(
              product.productName ?? "-",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: appStyle.textProduct(context),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: appDimension.size_8,
              right: appDimension.size_8,
              bottom: appDimension.size_8,
              top: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _bindProductPrice(context),
                const ButtonBasket(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bindProductPrice(BuildContext context) {
    double salePrice = Product.getSalesProductPrice(product);
    double standardPrice = Product.getStandardProductPrice(product);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (standardPrice > salePrice)
          Text(
            '฿${(formatCurrency.format(standardPrice)).toString()}',
            style: appStyle.textProductStandardPrice(context),
          ),
        Text(
          '฿${(formatCurrency.format(salePrice)).toString()}',
          style: appStyle.textProductSalePrice(context),
        ),
      ],
    );
  }
}
