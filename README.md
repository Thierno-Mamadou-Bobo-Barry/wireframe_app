# wireframe_app

## Description
Application Flutter réalisée pour reproduire un wireframe de type “Profil Facebook”.
Elle contient 3 écrans accessibles via une barre de navigation en bas :
- Profil
- Posts
- Feed

## Widgets / Concepts utilisés
- Container, Row, Column, Image, Text
- Stack + Positioned (pour cover + avatar)
- BoxDecoration (coins arrondis, ombres, bordures)
- Widgets réutilisables : PostCard, FriendAvatar

## Structure du projet
- lib/screens : profile_page.dart, posts_page.dart, feed_page.dart
- lib/widgets : post_card.dart, friend_avatar.dart
- lib/data : sample_data.dart
- assets/images : images (cover, avatar, posts, amis)
- screenshots : captures d’écran