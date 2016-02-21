
class User {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}



let userResponse = JSON(data: RawData.getUsersData())


var users = [User]()

for obj in userResponse.arrayValue {
    print(obj)
    users.append(User(name:obj["name"].stringValue))
}

users

