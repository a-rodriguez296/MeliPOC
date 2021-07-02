//
//  DetailViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    var interactor: DetailBusinessLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getSelectedItem()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
