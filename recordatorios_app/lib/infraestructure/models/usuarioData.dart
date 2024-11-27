class UsuarioData {
    final int id;
    final String nombre;
    final String email;
    final String clave;
    final int estado;

    UsuarioData({
        required this.id,
        required this.nombre,
        required this.email,
        required this.clave,
        required this.estado,
    });

    factory UsuarioData.fromJson(Map<String, dynamic> json) => UsuarioData(
        id: json["id"],
        nombre: json["nombre"],
        email: json["email"],
        clave: json["clave"],
        estado: json["estado"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "email": email,
        "clave": clave,
        "estado": estado,
    };
}