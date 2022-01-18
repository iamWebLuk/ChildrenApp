//
//  Friendlist.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Friendlist: View {
    var friendToInvite: [Friend]
    var body: some View {
        NavigationView {
            List(friendToInvite) {
         friend in ListRow(eachFriend: friend)
        }.navigationBarTitle("Mathematik")
    }
    }
}


struct ListRow: View {
    var eachFriend: Friend
    var body: some View {
        HStack {
             Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40, maxHeight: 40, alignment: .center)
                .padding()
            Spacer()
            Text(eachFriend.name)
            .padding()
        }
    }
}


var myFriends = [
    Friend(id: 1, name: "Zahlen"),
    Friend(id: 2, name: "Plus"),
    Friend(id: 3, name: "Minus"),
    Friend(id: 4, name: "Mal"),
    Friend(id: 5, name: "Durch"),
    Friend(id: 6, name: "abf")
]

struct Friendlist_Previews: PreviewProvider {
    static var previews: some View {
        Friendlist(friendToInvite: myFrien)
    }
}
