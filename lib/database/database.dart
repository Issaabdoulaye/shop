import 'package:flutter/material.dart';

class Article {
  final String id;
  final String nom;
  final double rating;
  final double prix;
  final String description;
  final String photoUrl;
  final String? categorie;
  final List<String>? availableColors;

  Article({
    required this.id,
    required this.nom,
    required this.rating,
    required this.prix,
    required this.description,
    required this.photoUrl,
    required this.categorie,
    required this.availableColors,
  });
}

// Liste d'articles fictifs
List<Article> articles = [
  Article(
    id: "1",
    categorie: "Electronics",
    availableColors: ["Black", "Silver", "Blue"],
    nom: "Smartphone Galaxy X",
    rating: 4.5,
    prix: 899.99,
    description:
        "Smartphone haut de gamme avec écran AMOLED 6.7 pouces et triple caméra",
    photoUrl:
        "https://cdn.pixabay.com/photo/2016/11/10/16/03/android-1814556_1280.jpg",
  ),
  Article(
    id: "2",
    nom: "Casque Audio Pro",
    rating: 4.8,
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    prix: 249.99,
    description:
        "Casque sans fil avec réduction de bruit active et autonomie de 30h",
    photoUrl:
        "https://cdn.pixabay.com/photo/2018/09/17/14/27/headphones-3683983_1280.jpg",
  ),
  Article(
    id: "3",
    nom: "Montre Connectée Fit",
    categorie: "Electronics",
    availableColors: ["Black", "Pink", "White"],
    rating: 4.2,
    prix: 199.99,
    description:
        "Montre intelligente avec suivi d'activité et moniteur de fréquence cardiaque",
    photoUrl:
        "https://cdn.pixabay.com/photo/2015/06/25/17/21/smart-watch-821557_1280.jpg",
  ),
  Article(
    id: "4",
    nom: "Tablet Lite",
    categorie: "Electronics",
    availableColors: ["Gray", "Gold"],
    rating: 4.0,
    prix: 349.99,
    description: "Tablette légère avec écran Full HD et processeur octo-core",
    photoUrl:
        "https://cdn.pixabay.com/photo/2014/01/21/21/08/ipad-249417_1280.jpg",
  ),
  Article(
    id: "5",
    nom: "Ecouteur Bluetooth",
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    rating: 4.6,
    prix: 129.99,
    description: "Ecouteur sans fil avec son stéréo 360°",
    photoUrl:
        "https://cdn.pixabay.com/photo/2018/11/02/05/36/headphones-3789632_1280.jpg",
  ),
  Article(
    id: "6",
    nom: "Clavier Mécanique",
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    rating: 4.7,
    prix: 89.99,
    description:
        "Clavier gaming mécanique avec rétroéclairage RGB personnalisable",
    photoUrl:
        "https://cdn.pixabay.com/photo/2022/06/18/19/18/keyboard-7270529_1280.jpg",
  ),
  Article(
    id: "7",
    nom: "Souris Ergonomique",
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    rating: 4.3,
    prix: 59.99,
    description:
        "Souris sans fil conçue pour le confort lors des longues sessions",
    photoUrl:
        "https://cdn.pixabay.com/photo/2020/04/04/15/04/click-5002627_1280.jpg",
  ),
  Article(
    id: "8",
    nom: "Chargeur Rapide",
    categorie: "Electronics",
    availableColors: ["blue", "white"],
    rating: 4.1,
    prix: 39.99,
    description: "Chargeur USB-C 65W compatible avec la plupart des appareils",
    photoUrl:
        "https://cdn.pixabay.com/photo/2023/06/14/01/18/wireless-charger-8062081_1280.jpg",
  ),
  Article(
    id: "9",
    nom: "Power Bank",
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    rating: 4.4,
    prix: 49.99,
    description: "Batterie externe haute capacité avec charge rapide",
    photoUrl:
        "https://cdn.pixabay.com/photo/2018/05/25/11/50/power-bank-3428943_1280.jpg",
  ),
  Article(
    id: "10",
    nom: "Webcam 4K",
    categorie: "Electronics",
    availableColors: ["Black", "White"],
    rating: 4.9,
    prix: 129.99,
    description: "Webcam ultra HD avec micro intégré et autofocus",
    photoUrl:
        "https://cdn.pixabay.com/photo/2016/02/24/12/30/camera-1219748_1280.jpg",
  ),
];

List<Article> getAllArticles() {
  return articles;
}

Article? getArticleById(String id) {
  final matches = articles.where((article) => article.id == id);
  return matches.isNotEmpty ? matches.first : null;
}
