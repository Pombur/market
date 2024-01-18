// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductTypeStruct extends FFFirebaseStruct {
  ProductTypeStruct({
    int? id,
    String? name,
    String? image,
    int? quantity,
    double? price,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _image = image,
        _quantity = quantity,
        _price = price,
        _email = email,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static ProductTypeStruct fromMap(Map<String, dynamic> data) =>
      ProductTypeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        image: data['image'] as String?,
        quantity: castToType<int>(data['quantity']),
        price: castToType<double>(data['price']),
        email: data['email'] as String?,
      );

  static ProductTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'image': _image,
        'quantity': _quantity,
        'price': _price,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductTypeStruct &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        quantity == other.quantity &&
        price == other.price &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, image, quantity, price, email]);
}

ProductTypeStruct createProductTypeStruct({
  int? id,
  String? name,
  String? image,
  int? quantity,
  double? price,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductTypeStruct(
      id: id,
      name: name,
      image: image,
      quantity: quantity,
      price: price,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductTypeStruct? updateProductTypeStruct(
  ProductTypeStruct? productType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductTypeStructData(
  Map<String, dynamic> firestoreData,
  ProductTypeStruct? productType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productType == null) {
    return;
  }
  if (productType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productTypeData =
      getProductTypeFirestoreData(productType, forFieldValue);
  final nestedData =
      productTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductTypeFirestoreData(
  ProductTypeStruct? productType, [
  bool forFieldValue = false,
]) {
  if (productType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productType.toMap());

  // Add any Firestore field values
  productType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductTypeListFirestoreData(
  List<ProductTypeStruct>? productTypes,
) =>
    productTypes?.map((e) => getProductTypeFirestoreData(e, true)).toList() ??
    [];
