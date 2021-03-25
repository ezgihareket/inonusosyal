import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/store.dart';

class StoreProductItem extends StatelessWidget {
  final StoreProduct storeProduct;
  const StoreProductItem({
    Key key,
    this.storeProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(25),
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
               child: Image.asset(
                  storeProduct.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  storeProduct.price,
                  style: GoogleFonts.muli(
                    color: Colors.black,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                /*Text(
                  '${storeProduct.rating} ★',
                  style: GoogleFonts.muli(
                    color: Colors.green.shade700,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),*/
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Text(
              storeProduct.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.muli(
                color: Colors.black.withOpacity(0.7),
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
