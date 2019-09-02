//: [Previous](@previous)

import Foundation

class User {
  var friends: [Friends] = []
  var blocks: [Friends] = []
}

class Friends {
  let name: String
  init(name: String) {
    self.name = name
  }
}

class FriendList {
  var user: User
  init(user: User) {
    self.user = user
  }
  
  func addFriend(name: String) {
    let friend = Friends(name: name)
    user.friends.append(friend)
  }
}

class BlockList {
  var user: User
  init(user: User) {
    self.user = user
  }
  
  func blockFriend(name: String) {
    let friend = Friends(name: name)
    if let index = user.friends.firstIndex(where: { $0.name == friend.name }) {
      user.friends.remove(at: index)
    }
    if !user.blocks.contains(where: { $0.name == friend.name }) {
      user.blocks.append(friend)
    }
  }
}


let user = User()

var friendList = FriendList(user: user)
friendList.addFriend(name: "원빈")
friendList.addFriend(name: "장동건")
friendList.addFriend(name: "정우성")
user.friends

var blockList = BlockList(user: user)
blockList.blockFriend(name: "원빈")
user.friends
user.blocks

//: [Next](@next)
