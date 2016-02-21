
class User {
    var name:String
    var phone:String
    
    init(name:String, phone:String) {
        self.name = name
        self.phone = phone
    }
}



let userResponse = JSON(data: RawData.getUsersData())


var users = [User]()

for obj in userResponse.arrayValue {
    print(obj)
    users.append(User(name:obj["name"].stringValue, phone:obj["phone"].stringValue))
}

users

