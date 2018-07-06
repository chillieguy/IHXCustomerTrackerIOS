//
//  MainTabBarVC
//  IHXCustomerTracker
//
//  Created by Chuck Underwood on 7/5/18.
//  Copyright © 2018 Chuck Underwood. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addCustomer))
    }
    
    private func setupTabBar() {
        let firstViewController = FirstVC()
        
//        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        firstViewController.tabBarItem = UITabBarItem(title: "Open", image: #imageLiteral(resourceName: "list"), tag: 0)
        
        let secondViewController = SecondVC()
        
        secondViewController.tabBarItem = UITabBarItem(title: "Completed", image: #imageLiteral(resourceName: "list"), tag: 1)
        
        let tabBarList = [firstViewController, secondViewController]
        
        viewControllers = tabBarList
    }
    
    @objc private func addCustomer() {
        
        let vc = NewCustomerVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

