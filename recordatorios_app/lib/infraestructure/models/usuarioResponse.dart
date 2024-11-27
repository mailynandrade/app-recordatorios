import 'dart:convert';
import 'package:recordatorios_app/infraestructure/models/usuarioData.dart';

UsuarioResponse usuarioResponseFromJson(String str) => UsuarioResponse.fromJson(json.decode(str));

String usuarioResponseToJson(UsuarioResponse data) => json.encode(data.toJson());

class UsuarioResponse {
    final bool error;
    final int status;
    final List<UsuarioData> body;

    UsuarioResponse({
        required this.error,
        required this.status,
        required this.body,
    });

    factory UsuarioResponse.fromJson(Map<String, dynamic> json) => UsuarioResponse(
        error: json["error"],
        status: json["status"],
        body: List<UsuarioData>.from(json["body"].map((x) => UsuarioData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "status": status,
        "body": List<dynamic>.from(body.map((x) => x.toJson())),
    };
}