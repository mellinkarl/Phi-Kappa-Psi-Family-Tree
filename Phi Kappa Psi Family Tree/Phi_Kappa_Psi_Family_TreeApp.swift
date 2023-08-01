//
//  Phi_Kappa_Psi_Family_TreeApp.swift
//  Phi Kappa Psi Family Tree
//
//  Created by Karl Mellinger on 7/26/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
    return true
  }
}
@main
struct Phi_Kappa_Psi_Family_TreeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            Homescreen()
        }
    }
}
