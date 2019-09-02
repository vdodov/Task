//: [Previous](@previous)

import Foundation

struct User {
  var friends: [Friends] = []
  var blocks: [Friends] = []
}

struct Friends {
  let name: String
}

struct FriendList {
  var user: User
  
  mutating func addFriend(name: String) -> User {
    let friend = Friends(name: name)
    user.friends.append(friend)
    return user
  }
}

struct BlockList {
  var user: User
  
  mutating func blockFriend(name: String) -> User  {
    let friend = Friends(name: name)
    if let index = user.friends.firstIndex(where: { $0.name == friend.name }) {
      user.friends.remove(at: index)
    }
    if !user.blocks.contains(where: { $0.name == friend.name }) {
      user.blocks.append(friend)
    }
    return user
  }
}


var user = User()

var friendList = FriendList(user: user)
user = friendList.addFriend(name: "원빈")
user = friendList.addFriend(name: "장동건")
user = friendList.addFriend(name: "정우성")
user.friends

var blockList = BlockList(user: user)
user = blockList.blockFriend(name: "원빈")
user.friends
user.blocks


//: [Next](@next)
