import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan Pricing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Try 7 days trial',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Plan Pricing',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildPlanOption('12 Months', 110, 45),
            _buildPlanOption('6 Months', 60, 35),
            _buildPlanOption('3 Months', 25, 25),
            const SizedBox(height: 20),
            const Text(
              'Payments and Billing',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'By subscribing to any of the available plans, you agree to pay the specified '
              'subscription fee, which will be charged on a recurring basis (monthly or annually) '
              'depending on the plan you select. Payment will be processed through the payment method you provide '
              'at the time of subscription. All payments are due in advance, and the subscription will automatically renew '
              'at the end of each billing period unless canceled before the renewal date. You are responsible for ensuring '
              'that your payment information is accurate and up to date. We accept various payment methods, including credit cards '
              'and PayPal. All fees are non-refundable except as provided by law or in specific circumstances, such as plan downgrades within the refund window.',
              style: TextStyle(fontSize: 12),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your navigation or functionality here
                },
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanOption(String duration, double price, int discount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Unlimited $duration',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'Save $discount%',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
