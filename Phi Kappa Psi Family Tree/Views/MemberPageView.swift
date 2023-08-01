//
//  MemberPageView.swift
//  Phi Kappa Psi Family Tree
//
//  Created by Karl Mellinger on 7/31/23.
//

import SwiftUI

struct MemberPageView: View {
    var member : Member
    
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .fill(Color.black)
                    .frame(width: 210)
                    .padding(1)
                member.image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .padding(1)
                    
            }
            HStack{
                Text("Name:")
                Text(member.name)
                    .fontWeight(.bold)
                    .padding(1)
            }
            HStack{
                Text("Hometown:")
                Text(member.hometown)
                    .fontWeight(.bold)
                    .padding(1)
            }
            HStack{
                Text("Badge Number:")
                Text(member.badgeNum + "...")
                    .fontWeight(.bold)
                    .padding(1)
            }
            HStack{
                Text("Graduation Year:")
                Text(member.gradClass)
                    .fontWeight(.bold)
                    .padding(1)
            }
            HStack{
                Text("Bio:")
                Text(member.description)
                    .fontWeight(.bold)
                    .padding(1)
            }
            HStack{
                Text("Nicknames:")
                Text(member.nicknames)
                    .fontWeight(.bold)
                    .padding(1)
            }
            Spacer()
            
            
        }
    }
}

struct MemberPageView_Previews: PreviewProvider {
    static var previews: some View {
        MemberPageView(member: members[0])
    }
}
