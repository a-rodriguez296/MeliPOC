//
//  DetailViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import UIKit

class DetailViewController: UIViewController, DetailDisplayLogic {

    var interactor: DetailBusinessLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getSelectedItem()
    }

    func displaySelectedItem(item: DetailViewModel) {
        
    }

}
