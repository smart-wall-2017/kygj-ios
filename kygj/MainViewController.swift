//
//  ViewController.swift
//  kygj
//
//  Created by 黄奇 on 6/4/17.
//  Copyright © 2017 SmartWall. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadAllViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAllViewController(){
        let naviHomeViewController = NaviHomeViewController()
        let naviHomeItem: UITabBarItem = UITabBarItem(title:"Home", image: UIImage(named: "test"), selectedImage: UIImage(named: "test"))
        naviHomeViewController.tabBarItem = naviHomeItem
        
        let naviUniversityViewController = NaviUniversityViewController()
        let naviUniversityItem: UITabBarItem = UITabBarItem(title: "University", image: UIImage(named: "test"), selectedImage: UIImage(named: "test"))
        naviUniversityViewController.tabBarItem = naviUniversityItem
        
        let naviForumViewController = NaviForumViewController()
        let naviForumItem: UITabBarItem = UITabBarItem(title: "Forum", image: UIImage(named: "test"), selectedImage: UIImage(named: "test"))
        naviForumViewController.tabBarItem = naviForumItem
    
        let naviQuestionBankViewController = NaviQuestionBankViewController()
        let naviQuestionBankItem = UITabBarItem(title: "Question", image: UIImage(named: "test"), selectedImage: UIImage(named: "test"))
        naviQuestionBankViewController.tabBarItem = naviQuestionBankItem
    
        let naviMyOptionViewController = NaviMyOptionViewController()
        let naviMyOptionItem = UITabBarItem(title: "MyOpt", image: UIImage(named: "test"), selectedImage: UIImage(named: "test"))
        naviMyOptionViewController.tabBarItem = naviMyOptionItem
        
        
        
        let tabBarViewControllers = [
            naviHomeViewController,
            naviUniversityViewController,
            naviForumViewController,
            naviQuestionBankViewController,
            naviMyOptionViewController
        ]
        
        self.setViewControllers(tabBarViewControllers, animated: true)
        self.selectedIndex = 0
    }
}

