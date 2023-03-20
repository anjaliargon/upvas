import 'package:get/get.dart';

class Selected extends Rxn {
  final String name;
  final RxInt status;

  Selected({required this.name, required this.status});

  factory Selected.fromJson(Map<String, dynamic> json) => Selected(
    name: json["name"],
    status: RxInt(json["status"] ?? 0),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "status": status.value,
  };
}