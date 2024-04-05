import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final ImageProvider image;
  final String singers;
  const CategoryItem({
    required this.image,
    required this.singers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9, right: 10),
      child: SizedBox(
        width: 150,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Image(
              image: image,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            singers,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey.shade400),
          ),
        ]),
      ),
    );
  }
}
