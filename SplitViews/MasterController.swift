//
//  MasterController.swift
//  SplitViews
//
//  Created by Sergey Lukaschuk on 10.12.2021.
//

import UIKit

class MasterController: UITableViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: .zero, style: .insetGrouped)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "id")
        
        self.navigationItem.title = "Master"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id")!
        cell.textLabel?.text = "\(indexPath)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let controller = DetailController()
       controller.navigationTitle = "\(indexPath)"
       self.showDetailViewController(UINavigationController(rootViewController: controller), sender: nil)
    }
}
