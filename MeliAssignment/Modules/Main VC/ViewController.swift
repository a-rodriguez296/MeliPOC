//
//  ViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 28/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressContinue(_ sender: Any) {
        let displayResultsVC = DisplayResultsRouter.assembleModule()
        let navBarVC = UINavigationController.init(rootViewController: displayResultsVC)
        navBarVC.modalPresentationStyle = .overFullScreen
        present(navBarVC, animated: true, completion: nil)
    }
}

