import 'package:flutter/material.dart';
import 'package:proj4/components/counter_component.dart';

class OrderItem extends StatefulWidget {
  final String imageURI;
  final String itemTitle;
  final String itemPrice;

  const OrderItem({
    super.key,
    required this.imageURI,
    required this.itemTitle,
    required this.itemPrice,
  });

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(image: AssetImage(widget.imageURI), fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.itemTitle),
                  Text(widget.itemPrice),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CounterComponent(),
            ),
          ],
        ),
      );
}
