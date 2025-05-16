import 'package:flutter/material.dart';
import '../detail_page.dart';

class TowelSofaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        ProductCard(
          title: "Bath Towel",
          price: "₹299",
          image: "assets/images/towel1.jpg",
          description: "Soft and absorbent bath towel made with high-quality cotton.",
        ),
        ProductCard(
          title: "Hand Towel",
          price: "₹149",
          image: "assets/images/towel2.jpg",
          description: "Compact and quick-drying hand towel for everyday use.",
        ),
        ProductCard(
          title: "Sofa Cover Set",
          price: "₹1299",
          image: "assets/images/sofa_cover1.jpeg",
          description: "Elegant and durable sofa cover set to protect and decorate.",
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
