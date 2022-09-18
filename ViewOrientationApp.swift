//
//  ViewOrientationApp.swift
//  ViewOrientation
//
//  Created by Loopy on 2022/09/17.
//

import SwiftUI
 
@main
struct ViewOrientationApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate{

    static var orientationLock = UIInterfaceOrientationMask.portrait

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask{
        return AppDelegate.orientationLock
    }
}
