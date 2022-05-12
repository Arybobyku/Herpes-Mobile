import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{
  @HiveField(0)
  late String name;
  @HiveField(1)
  late int age;
  @HiveField(2)
  late String gender;
}
