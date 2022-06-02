//
//  AppDelegate.swift
//  Swift Boilerplate
//
//  Created by Ying Wang on 2022/1/30.
//

import UIKit
import SwiftTheme
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

//    var window: UIWindow?

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MyThemes.restoreLastTheme()

        // status bar
        UIApplication.shared.theme_setStatusBarStyle([.lightContent, .default, .lightContent, .lightContent], animated: true)
        let flutterEngine = FlutterEngine(name: "my flutter engine")
        Application.shared.flutterEngine = flutterEngine
        GeneratedPluginRegistrant.register(with: flutterEngine)

        let window = UIWindow(frame: UIScreen.main.bounds)

        Application.shared.configureMainInterface(in: window)

        self.window = window
        return true
    }

    override func applicationWillTerminate(_ application: UIApplication) {
        MyThemes.saveLastTheme()
    }

}
