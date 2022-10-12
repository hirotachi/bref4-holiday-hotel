
class User {
-String username
-String password
-String email
-bool login(String username, String password)
}

enum RoomType {
SUITE
SINGLE
DOUBLE
TRIPLE
}
class Manager extends User {

}

class Client extends User{
+Reservation[] getReservations()
}

class Room{
+int roomId
+RoomType type
+int pricePerDay
+String[] images
+Room createRoom(RoomType type, int pricePerDay, String[] images, Promotion promotion)
+Room updateRoom(int roomId, Room updates)
+bool deleteRoom(int roomId)
+Room[] getAll(RoomType type)
+Room getRoom(int roomId)
}

class Promotion {
+String name
+float percentage
+Promotion createPromotion(String name, float perentage)
+Promotion updatePromotion(int promotionId, Promotion updates)
+bool deletePromotion(int promotionId)
+Promotion[] getAll()
}


class Reservation{
+Date startDate
+Date endDate
+int total
}

class Extra{
+String name
+int price
}

Manager "1" .. "0..*" Room: > manages
Manager "1" .. "0..*" Promotion: > manages
Client "1" *.. "0..*" Reservation : has
Room "1" *.. "0..*" Reservation : has
Reservation  "0..*" *.. "0..*" Extra: reserves