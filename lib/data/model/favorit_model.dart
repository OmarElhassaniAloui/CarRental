class FavoritModel{ 
  // attribiuts 
  int id;
  String carId;
  String userId;
  String createdAt;
  String updatedAt;
  // constructor
  FavoritModel({
    required this.id,
    required this.carId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });
  // methods
  factory FavoritModel.fromJson(Map<String, dynamic> json) => FavoritModel(
        id: json["id"],
        carId: json["car_id"],
        userId: json["user_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "car_id": carId,
        "user_id": userId,
        "created_at": createdAt,
        "updated_at": updatedAt,
  };
    





}