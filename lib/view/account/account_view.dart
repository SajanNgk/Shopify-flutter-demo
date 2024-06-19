import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.account_circle_outlined,
                size: 32,
                color: AppColor.blue,
              ),
              const SizedBox(width: 16),
              Text(
                "Profile",
                
              )
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(
                Icons.list_alt_sharp,
                size: 32,
                color: AppColor.blue,
              ),
              SizedBox(width: 16),
              Text(
                "Order",
               
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 32,
                color: AppColor.blue,
              ),
              const SizedBox(width: 16),
              Text(
                "Address",
               
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(
                Icons.payment_outlined,
                size: 32,
                color: AppColor.blue,
              ),
              const SizedBox(width: 16),
              Text(
                "Payment",
              )
            ],
          ),
        ],
      ),
    );
  }
}
