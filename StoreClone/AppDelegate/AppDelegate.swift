//
//  AppDelegate.swift
//  StoreClone
//
//  Created by junwoo on 12/12/2018.
//  Copyright © 2018 samchon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow()
    window?.makeKeyAndVisible()
    let networkManager = NetworkManager()
    let listViewController = ListViewController(manager: networkManager)
    window?.rootViewController = UINavigationController(rootViewController: listViewController)
    return true
  }
}

