import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fleet Management Dashboard'),
      ),
      body: VehicleList(),
    );
  }
}

class VehicleList extends StatelessWidget {
  final List<Vehicle> vehicles = [
    Vehicle(id: 1, name: 'Delivery Van 1', status: 'Active'),
    Vehicle(id: 2, name: 'Delivery Van 2', status: 'Inactive'),
    Vehicle(id: 3, name: 'Delivery Van 3', status: 'Active'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vehicles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(vehicles[index].name),
            subtitle: Text('Status: ${vehicles[index].status}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to vehicle details
            },
          ),
        );
      },
    );
  }
}

class Vehicle {
  final int id;
  final String name;
  final String status;

  Vehicle({required this.id, required this.name, required this.status});
}
