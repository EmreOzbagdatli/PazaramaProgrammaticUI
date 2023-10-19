//
//  MainTabController.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class MainTabController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        
        configureViewControllers()
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart.fill"), style: .done, target: self, action: #selector(didTapButton))
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        
        let titleLabel = UILabel()
        titleLabel.text = "Good Morning Akila!"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: titleLabel.text, style:.done, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem?.tintColor = .black
   
    }
    
    
    private func configureViewControllers(){
        let menu = MenuVC()
        menu.tabBarItem.image = UIImage(systemName: "square.grid.2x2.fill")
        menu.title = "Menu"
        let offer = OffersVC()
        offer.tabBarItem.image = UIImage(systemName: "basket.fill")
        offer.title = "Offers"
        let home = HomeVC()
        home.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let profile = ProfileVC()
        profile.tabBarItem.image = UIImage(systemName: "person.fill")
        profile.title = "Profile"
        let more = MoreVC()
        more.tabBarItem.image = UIImage(systemName: "list.bullet")
        more.title = "More"
        
        setViewControllers([menu,offer,home,profile,more], animated: true)
        self.selectedIndex = 2
    }

 

    @objc private func didTapButton(){
        
    }
}
