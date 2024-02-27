import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        return InkWell(
          child: SizedBox(
            height: 100,
            child: Card(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CachedNetworkImage(
                                  imageUrl: dummyProducts[index].imgUrl),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 0,
                        child: InkWell(
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.favorite_border),
                          ),
                          onTap: () {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Text(
                          dummyProducts[index].name,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(dummyProducts[index].category.title),
                        Text('\$${dummyProducts[index].price.toString()}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: dummyProducts.length,
    );
  }
}
