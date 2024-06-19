//
//  UpcomingVC.swift
//  NTFXReplica
//
//  Created by Maziar Layeghkar on 19.06.24.
//

import UIKit

class UpcomingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //MARK: How to add Large Title to our ViewControllers
        title = "Coming Soon"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
