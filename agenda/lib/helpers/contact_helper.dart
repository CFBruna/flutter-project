import 'package:sqflite/sqflite.dart';

final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String phoneColumn = "phoneColumn";
final String imgColumn = "imgColumn";

class ContactHelper {
  //essa classe vai conter apenas um objeto, não podendo ter várias instancias, usando padrão singleton, interessante para apenas um objeto
// declarando minha classe e criando um objeto dela mesma que é o _instance e chama o construtor interno, que é o internal
  static final ContactHelper _instance = ContactHelper.internal();

  factory ContactHelper() => _instance;
  ContactHelper.internal();

  Database _db;

  get db {
    is( _db)
  }
}

class Contact {

  //dados do meu contato que será transformado em mapa na função

  int id;
  String name;
  String email;
  String phone;
  String img;


  //construtor para pegar o mapa e construir o meu contato
  Contact.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];

  }

 // função que retorna um mapa
  Map toMap(){
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img,
    };
    if (id != null){
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }
}