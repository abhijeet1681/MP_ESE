import 'package:flutter/material.dart';
import '../detail_page.dart';

class BedsheetsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        ProductCard(
          title: "Cotton Bedsheet",
          price: "₹799",
          image: "assets/images/bedsheet1.jpg",
          description: "Soft and breathable cotton bedsheet, perfect for everyday comfort.",
        ),
        ProductCard(
          title: "Silk Bedsheet",
          price: "₹1199",
          image: "assets/images/bedsheet2.jpg",
          description: "Luxurious silk bedsheet that gives your room a royal look.",
        ),
        ProductCard(
          title: "Printed Bedsheet",
          price: "₹999",
          image: "assets/images/bedsheet3.jpeg",
          description: "Stylish printed bedsheet to enhance your bedroom decor.",
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title, price, image, description;

  ProductCard({
    required this.title,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(price),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => DetailPage(
              title: title,
              price: price,
              image: image,
              description: description,
            ),
          ));
        },
      ),
    );
  }
}
