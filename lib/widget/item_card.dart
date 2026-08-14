import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/item.dart';
import '../model/fav_model.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<FavoritesModel>();
    final alreadySaved = favorites.items.any((i) => i.id == item.id);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(item.title),
        subtitle: Text('THB ${item.price.toStringAsFixed(0)}'),
        trailing: ElevatedButton(
          onPressed: alreadySaved
              ? null
              : () {
                  context.read<FavoritesModel>().add(item);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Saved ${item.title} to favorites')),
                  );
                },
          child: Text(alreadySaved ? 'Saved' : 'Save to favorites'),
        ),
      ),
    );
  }
}