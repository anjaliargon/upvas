import 'package:get/get.dart';

class Selected extends Rxn {
  final String name;
  final RxInt status;
  final String location;

  Selected({required this.location,required this.name, required this.status});

  factory Selected.fromJson(Map<String, dynamic> json) => Selected(
    location:json["location"],
    name: json["name"],
    status: RxInt(json["status"] ?? 0),
  );

  Map<String, dynamic> toJson() => {
    "location":location,
    "name": name,
    "status": status.value,
  };
}