import 'package:flutter/material.dart';
import 'package:proj4/cardapio.dart';
import 'package:proj4/components/drink_item.dart';

class DrinkMenu extends StatelessWidget {
  const DrinkMenu({super.key});
  final List items = drinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Bebidas',
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 178 / 194,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return DrinkItem(
                  itemTitle: items[index]['name'],
                  itemPrice: items[index]['price'],
                  imageURI: items[index]['image'],
                );
              },
              childCount: items.length,
            ),
          )
        ],
      ),
    );
  }
}
