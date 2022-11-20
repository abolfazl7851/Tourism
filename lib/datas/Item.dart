class Item {

  late int _id;

  late String _name;

  late String _image;

  late String _type;

  late String _rate;

  late double _latitude;

  late double _longitude;

  late bool _isFavorite;

  late List<String> _album;

  late String _description;

  Item(
      this._id,
      this._name,
      this._image,
      this._type,
      this._rate,
      this._latitude,
      this._longitude,
      this._isFavorite,
      this._album,
      this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  List<String> get album => _album;

  set album(List<String> value) {
    _album = value;
  }

  bool get isFavorite => _isFavorite;

  set isFavorite(bool value) {
    _isFavorite = value;
  }


  double get latitude => _latitude;

  set latitude(double value) {
    _latitude = value;
  }

  String get rate => _rate;

  set rate(String value) {
    _rate = value;
  }

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  double get longitude => _longitude;

  set longitude(double value) {
    _longitude = value;
  }
}
