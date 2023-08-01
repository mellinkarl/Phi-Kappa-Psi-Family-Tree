//
//  MemberPage.swift
//  Phi Kappa Psi Family Tree
//
//  Created by Karl Mellinger on 7/31/23.
//

import Foundation
import SwiftUI

struct Member: Hashable, Codable {
    var name: String
    var badgeNum: String
    var hometown: String
    var gradClass: String
    var nicknames: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
