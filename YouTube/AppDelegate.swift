//
//  AppDelegate.swift
//  YouTube
//
//  Created by Douglas Moreira on 29/06/19.
//  Copyright © 2019 Douglas Moreira. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window  = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let layout = UICollectionViewFlowLayout()
        window?.rootViewController = UINavigationController(rootViewController: HomeController(collectionViewLayout: layout))
        UINavigationBar.appearance().barTintColor = UIColor.rgb(red: 230, green: 32, blue: 31)
        application.statusBarStyle = .lightContent
        
        //Retirando barra preta sob barra de navegacao
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)        
        
        let statusBarBackgroundView = UILabel()
        statusBarBackgroundView.backgroundColor = UIColor.rgb(red: 194, green: 31, blue: 31)
        
        window?.addSubview(statusBarBackgroundView)
        window?.addConstraintsWithFormat("H:|[v0]|", views: statusBarBackgroundView)
        window?.addConstraintsWithFormat("V:|[v0(20)]", views: statusBarBackgroundView)
        
        return true
    }

}
