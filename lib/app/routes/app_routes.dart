part of 'app_pages.dart';
abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const MAINHOME = _Paths.Dashboard;
  static const UPAVASLIST = _Paths.Upvaslist;
  static const Add_upvas = _Paths.Add_upvas;
  static const LOCATION = _Paths.LOCATION;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const Dashboard = '/dashboard';
  static const Upvaslist = '/upavaslist';
  static const Add_upvas = '/addupvas';
  static const LOCATION ='/location';
}
