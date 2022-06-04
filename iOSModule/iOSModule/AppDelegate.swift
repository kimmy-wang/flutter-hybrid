//
//  AppDelegate.swift
//  iOSModule
//
//  Created by Ying Wang on 2022/6/4.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let flutterEngine = FlutterEngine(name: "my flutter engine")
        flutterEngine.run(withEntrypoint: nil)
        GeneratedPluginRegistrant.register(with: flutterEngine)
        let window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeViewController(engine: flutterEngine)

        window.rootViewController = vc
        self.window = window
        return true
    }


}

