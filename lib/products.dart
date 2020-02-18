import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: FlatButton(
          onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/blue.png',
                width: 100,
              ),
              Column(
                children: <Widget>[
                  Text('Name: %name%',
                  style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Owner: %owner%',
                  style: TextStyle(fontSize: 15.0),
                  ),
                  Text('Relay Type: %relay type%',
                  style: TextStyle(fontSize: 15.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}