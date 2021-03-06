//
//  DetailController.swift
//  SplitViews
//
//  Created by Sergey Lukaschuk on 10.12.2021.
//

import UIKit

class DetailController: UIViewController {
    
    var navigationTitle: String = "Detail"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = navigationTitle
        self.view.backgroundColor = .white
        
        if let splitController = self.splitViewController{
           if let navController = splitController.viewControllers.last as? UINavigationController {
              navController.topViewController?.navigationItem.leftBarButtonItem = splitController.displayModeButtonItem
           }
        }
    }
}

