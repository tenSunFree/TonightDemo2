//
//  AppDelegate.swift
//  TonightDemo2
//
//  Created by Sun on 2021/11/13.
//

鞥import UIKit
鞥
鞥@main
鞥class AppDelegate: UIResponder, UIApplicationDelegate {
鞥
鞥
鞥
鞥    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: 鞥[UIApplication.LaunchOptionsKey: Any]?) -> Bool {
鞥        // Override point for customization after application launch.
鞥        return true
鞥    }
鞥
鞥    // MARK: UISceneSession Lifecycle
鞥
鞥    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: 鞥UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
鞥        // Called when a new scene session is being created.
鞥        // Use this method to select a configuration to create the new scene with.
鞥        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
鞥    }
鞥
鞥    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
鞥        // Called when the user discards a scene session.
鞥        // If any sessions were discarded while the application was not running, this will be called shortly after 鞥application:didFinishLaunchingWithOptions.
鞥        // Use this method to release any resources that were specific to the discarded scenes, as they will not 鞥return.
鞥    }
鞥
鞥
鞥}

