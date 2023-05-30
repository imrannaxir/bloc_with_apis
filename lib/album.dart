class Album {
  int? userId;
  int? id;
  String? title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  /*
   Album.fromJson(Map<String, dynamic> json) is the constructor for the Album class, which takes a json map as input.

   This constructor is used to create an Album object 
   by extracting values from a JSON map 
   and assigning them to the corresponding properties of the object.
   */

  Album.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  /*
     The toJson() method is used to convert
      an instance of this class
      into a JSON-formatted Map object.
   */ 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
   /*
     Assigns the value of the userId property 
     to the key 'userId' in the data map.
    */
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;

    return data;
  }
}
