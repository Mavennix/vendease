class RecentOrder {
  String orderId;
  String amount;
  String dateTime;
  String daysAgo;
  bool isCompleted;

  RecentOrder({
    required this.orderId,
    required this.amount,
    required this.dateTime,
    required this.daysAgo,
    required this.isCompleted,
  });
}

List<RecentOrder> recentOrders = [
  RecentOrder(
      orderId: 'P0160984146427',
      amount: '₦8,000',
      dateTime: 'Jan 3, 2021  10:11 AM',
      daysAgo: '2',
      isCompleted: true),
  RecentOrder(
      orderId: 'P0160984146427',
      amount: '₦8,000',
      dateTime: 'Jan 3, 2021  10:11 AM',
      daysAgo: '2',
      isCompleted: false),
  RecentOrder(
      orderId: 'P0160984146427',
      amount: '₦8,000',
      dateTime: 'Jan 3, 2021  10:11 AM',
      daysAgo: '2',
      isCompleted: false),
  RecentOrder(
      orderId: 'P0160984146427',
      amount: '₦8,000',
      dateTime: 'Jan 3, 2021  10:11 AM',
      daysAgo: '2',
      isCompleted: true),
];
