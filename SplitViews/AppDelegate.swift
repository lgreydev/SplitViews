//
//  AppDelegate.swift
//  SplitViews
//
//  Created by Sergey Lukaschuk on 10.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let masterController = MasterController()
        let masterNavigationController = UINavigationController(rootViewController: masterController)

        let detailController = DetailController()
        let detailNavigationController = UINavigationController(rootViewController: detailController)

        let splitViewController =  UISplitViewController()
        splitViewController.viewControllers = [masterNavigationController, detailNavigationController]
        splitViewController.preferredDisplayMode = UISplitViewController.DisplayMode.oneBesideSecondary
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = splitViewController
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

extension AppDelegate: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
