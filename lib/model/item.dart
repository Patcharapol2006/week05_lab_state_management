class Item {
  final String id;
  final String title;
  final double price;

  const Item({required this.id, required this.title, required this.price});
}

final catalog = <Item>[
  const Item(id: 'i1', title: 'Used Calculus textbook', price: 150),
  const Item(id: 'i2', title: 'Wireless headphones (90% condition)', price: 450),
  const Item(id: 'i3', title: 'Desk lamp for dorm', price: 120),
];