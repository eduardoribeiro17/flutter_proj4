import 'package:flutter/material.dart';
import 'package:proj4/themes/app_colors.dart';

class HighlightItem extends StatelessWidget {
  final String imageURI;
  final String itemTitle;
  final String itemPrice;
  final String itemDescription;

  const HighlightItem({
    super.key,
    required this.imageURI,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        elevation: 0,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(imageURI), fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    itemTitle,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text('R\$   $itemPrice'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(itemDescription),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: AppColors.buttonStyle,
                        child: const Text('Pedir')),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
