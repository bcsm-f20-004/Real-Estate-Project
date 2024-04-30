import 'package:flutter/material.dart';
import 'package:realestate/property_detail_page.dart';
import 'property.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Property> _properties = [
    Property(
      id: '1',
      title: 'House in the City',
      description: 'Beautiful house in the city center',
      imageUrl: 'https://picsum.photos/id/1015/1000/600',
      price: 500000,
      location: 'New York',
    ),
    Property(
      id: '2',
      title: 'Villa in the Countryside',
      description: 'Luxurious villa in the countryside',
      imageUrl: 'https://picsum.photos/id/1016/1000/600',
      price: 1000000,
      location: 'California',
    ),
    Property(
      id: '3',
      title: 'Apartment in the City',
      description: 'Cozy apartment in the city center',
      imageUrl: 'https://picsum.photos/id/1018/1000/600',
      price: 300000,
      location: 'Chicago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRM Real Estate'),
      ),
      body: ListView.builder(
        itemCount: _properties.length,
        itemBuilder: (context, index) {
          final property = _properties[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PropertyDetailPage(property: property),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(property.imageUrl),
                  ListTile(
                    title: Text(property.title),
                    subtitle: Text(property.location),
                    trailing: Text('\$${property.price}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
