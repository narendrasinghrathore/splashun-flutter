class Urls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;
}

class Links {
  String self;
  String html;
  String download;
  String download_location;
}

class Links2 {
  String self;
  String html;
  String photos;
  String likes;
  String portfolio;
  String following;
  String followers;
}

class ProfileImage {
  String small;
  String medium;
  String large;
}

class User {
  String id;
  DateTime updated_at;
  String username;
  String name;
  String first_name;
  String last_name;
  dynamic twitter_username;
  String portfolio_url;
  String bio;
  String location;
  Links2 links;
  ProfileImage profile_image;
  String instagram_username;
  int total_collections;
  int total_likes;
  int total_photos;
}

class GetPhotos {
  String id;
  DateTime created_at;
  DateTime updated_at;
  int width;
  int height;
  String color;
  String description;
  Urls urls;
  Links links;
  dynamic categories;
  bool sponsored;
  int likes;
  bool liked_by_user;
  dynamic current_user_collections;
  dynamic slug;
  User user;
}

enum OrderBy { Latest, Oldest, Popular }
