import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 25.0), // Add padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today, October 2"),
                Row(
                  children: [
                    Text("All Transactions"),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 244, 245),
              child: Icon(
                Icons.fitness_center,
                color: Colors.blueAccent,
              ),
            ),
            title: Text("Workout"),
            subtitle: Text("Payment"),
            trailing: Text(
              "\KSH 2500",
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 244, 245),
              child: Icon(
                Icons.track_changes,
                color: Colors.blueAccent,
              ),
            ),
            title: Text("K.C.B Bank"),
            subtitle: Text("Deposit"),
            trailing: Text(
              "KSH 19500",
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 244, 245),
              child: Icon(
                Icons.payments_rounded,
                color: Colors.blueGrey,
              ),
            ),
            title: Text("Shopping"),
            subtitle: Text("Payment"),
            trailing: Text(
              "\KSH 12500",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 244, 245),
              child: Icon(
                Icons.mobile_friendly,
                color: Colors.blueAccent,
              ),
            ),
            title: Text("Movie"),
            subtitle: Text("Payment"),
            trailing: Text(
              "\KSH 600",
              style: TextStyle(color: Colors.teal),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 238, 244, 245),
              child: Icon(
                Icons.send,
                color: Colors.teal,
              ),
            ),
            title: Text("Fare"),
            subtitle: Text("Payment"),
            trailing: Text(
              "\KSH 900",
              style: TextStyle(color: Colors.teal),
            ),
          )
        ],
      ),
    );
  }
}
