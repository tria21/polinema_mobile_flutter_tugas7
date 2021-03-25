class Item {
  int _id;
  String _name;
  int _price;
  String _kode; //menambah variabel kode dan stock
  int _stock;

  //membuat setter getter
  int get id => _id;
  
  String get name => this._name;
  set name(String value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  String get kode => this._kode; //menambah setter getter kode
  set kode(String value) => this._kode = value;

  get stock => this._stock; //menambah setter getter stock
  set stock(value) => this._stock = value;

  //konstruktor versi 1
  Item(this._kode, this._name, this._price, this._stock); //menambah konstruktor kode & stock

  //konstruktor versi 2 : konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic>map) {
    this._id = map['id'];
    this._kode = map['kode']; //menambah konstruktor kode
    this._name = map['name'];
    this._price = map['price'];
    this._stock = map['stock']; //menambah konstruktor stock
  }

  //konversi item ke map
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['kode'] = kode; //menambah konversi kode
    map['name'] = name;
    map['price'] = price;
    map['stock'] = stock; //menambah konversi stock
    return map;
  }
}