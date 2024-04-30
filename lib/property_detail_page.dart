import 'package:flutter/material.dart';
import 'property.dart';

class PropertyDetailPage extends StatelessWidget {
  final Property property;

  const PropertyDetailPage({Key? key, required this.property})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(property.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(property.imageUrl),
            ListTile(
              title: Text('Description'),
              subtitle: Text(property.description),
            ),
            ListTile(
              title: Text('Location'),
              subtitle: Text(property.location),
            ),
            ListTile(
              title: Text('Price'),
              subtitle: Text('\$${property.price}'),
            ),
          ],
        ),
      ),
    );
  }
}
