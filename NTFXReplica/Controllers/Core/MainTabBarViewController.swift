//
//  MainTabBarViewController.swift
//  NTFXReplica
//
//  Created by Maziar Layeghkar on 09.06.24.
//

import UIKit

//TODO2: How to create TabBarController on bottom
class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: ComingSoonViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")

        //TODO: Just title
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }

}

/*
 We have a MainTabBarVC
 4 NC will be attached/setViewControllers

 One of them is HomeVC
 To HomeVC we want to add tableView
 We create a TableView
 Then add that TableView to our view (HomeVC) addSubview
 That table needs to have cells/rows.
 In order to modify our tableView, we need to register to delegate and dataSource and extend our HomeVC, in order to use their methods such:
 heightForRow - heightForHeader - numberOfSections - numberOfRowsInSection - cellForRowAt
 Last of should return a cell object/class
 Therefore we need that our table to register to a class which is the class of our cells, similar to above
 
 Then we need a new TableViewCell class for the above last two points
 
 Then as we want in each Row/Cell separated collectionViews, we need to create a new one in CollectionViewTableViewCell
 
 Next is the headerView with a big image and 2 buttons of Play and Download
 for the image we need to have a new UIView where we will initialize our UIImageView
 
 Add gradient to the image from 0/clear on top to be sysBackgroundColor in the bottom
 
 
 */
