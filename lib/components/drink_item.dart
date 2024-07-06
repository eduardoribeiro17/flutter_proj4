import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  final String imageURI;
  final String itemTitle;
  final String itemPrice;

  const DrinkItem({
    super.key,
    required this.imageURI,
    required this.itemTitle,
    required this.itemPrice,
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
                children: <Widget>[
                  Text(itemTitle, style: const TextStyle(fontSize: 16)),
                  Text('R\$   $itemPrice'),
                ],
              ),
            ),
          ],
        ),
      );
}
