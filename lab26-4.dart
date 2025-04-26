void main() {
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'mansaf'},
    {'id': 5, 'status': 'vip', 'item': 'nuggets'},
    {'id': 6, 'status': 'ready', 'item': 'pizza'},
  ];

  for (var order in orders) {
    if (order['status'] == 'canceled') {
      continue;
    }

    if (order['status'] == 'vip') {
      print('VIP order found! Prioritize order ID: ${order['id']}\n');
      handleOrder(order);
      print('--------');

      break;
    }

    print('Processing order ID: ${order['id']}\n');
    handleOrder(order);
    print('--------');

    if (order['id'] == 4) {
      print('Order ID 4 is taking too long! Alert the kitchen!\n');
      print('--------');
    }
  }
}

void handleOrder(Map<String, dynamic> order) {
  switch (order['item']) {
    case 'burger':
      print('Prepare a delicious burger.\n');
      break;
    case 'pizza':
      print('Bake a cheesy pizza.\n');
      break;
    case 'fries':
      print('Fry some crispy fries.\n');
      break;
    case 'nuggets':
      print('Cook golden nuggets.\n');
      break;
    default:
      print('the item is unknown\n');
  }
}
