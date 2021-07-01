//
//  DisplayResultsViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import UIKit

class DisplayResultsViewController: UIViewController, DisplayResultsDisplayLogic {

    var interactor: DisplayResultsBusinessLogic?
    weak var router: DisplayResultsWireframeLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchController()
    }

    func configureSearchController() {
        let search = UISearchController(searchResultsController: nil)
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Ingresa tu búsqueda"
        search.searchBar.delegate = self
        navigationItem.searchController = search
    }

    func displayResults(with array: [ResultViewModel]) {
        
    }
}

extension DisplayResultsViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text else { return }
        interactor?.fetchResults(with: text)
    }
}
