import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _active = prefs.getBool('ff_active') ?? _active;
    });
    _safeInit(() {
      _OK = prefs.getBool('ff_OK') ?? _OK;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ProductTypeStruct> _shopingCart = [];
  List<ProductTypeStruct> get shopingCart => _shopingCart;
  set shopingCart(List<ProductTypeStruct> value) {
    _shopingCart = value;
  }

  void addToShopingCart(ProductTypeStruct value) {
    _shopingCart.add(value);
  }

  void removeFromShopingCart(ProductTypeStruct value) {
    _shopingCart.remove(value);
  }

  void removeAtIndexFromShopingCart(int index) {
    _shopingCart.removeAt(index);
  }

  void updateShopingCartAtIndex(
    int index,
    ProductTypeStruct Function(ProductTypeStruct) updateFn,
  ) {
    _shopingCart[index] = updateFn(_shopingCart[index]);
  }

  void insertAtIndexInShopingCart(int index, ProductTypeStruct value) {
    _shopingCart.insert(index, value);
  }

  List<UserStruct> _UserINFO = [];
  List<UserStruct> get UserINFO => _UserINFO;
  set UserINFO(List<UserStruct> value) {
    _UserINFO = value;
  }

  void addToUserINFO(UserStruct value) {
    _UserINFO.add(value);
  }

  void removeFromUserINFO(UserStruct value) {
    _UserINFO.remove(value);
  }

  void removeAtIndexFromUserINFO(int index) {
    _UserINFO.removeAt(index);
  }

  void updateUserINFOAtIndex(
    int index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _UserINFO[index] = updateFn(_UserINFO[index]);
  }

  void insertAtIndexInUserINFO(int index, UserStruct value) {
    _UserINFO.insert(index, value);
  }

  double _StopWatch = 0.0;
  double get StopWatch => _StopWatch;
  set StopWatch(double value) {
    _StopWatch = value;
  }

  LatLng? _location = const LatLng(56.1428026, 40.3895795);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
  }

  bool _active = true;
  bool get active => _active;
  set active(bool value) {
    _active = value;
    prefs.setBool('ff_active', value);
  }

  int _idUser = 0;
  int get idUser => _idUser;
  set idUser(int value) {
    _idUser = value;
  }

  dynamic _adres;
  dynamic get adres => _adres;
  set adres(dynamic value) {
    _adres = value;
  }

  String _GeoToAddrass = '';
  String get GeoToAddrass => _GeoToAddrass;
  set GeoToAddrass(String value) {
    _GeoToAddrass = value;
  }

  bool _confirmItem = false;
  bool get confirmItem => _confirmItem;
  set confirmItem(bool value) {
    _confirmItem = value;
  }

  TypeWellStruct _Type = TypeWellStruct.fromSerializableMap(jsonDecode(
      '{"abi":"Абисинская","deep":"Погружной","crash":"Разведка","other":"Иное..."}'));
  TypeWellStruct get Type => _Type;
  set Type(TypeWellStruct value) {
    _Type = value;
  }

  void updateTypeStruct(Function(TypeWellStruct) updateFn) {
    updateFn(_Type);
  }

  bool _OK = false;
  bool get OK => _OK;
  set OK(bool value) {
    _OK = value;
    prefs.setBool('ff_OK', value);
  }

  bool _Cancel = false;
  bool get Cancel => _Cancel;
  set Cancel(bool value) {
    _Cancel = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
