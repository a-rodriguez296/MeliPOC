//
//  DisplayResultsViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import UIKit

class DisplayResultsViewController: UIViewController, DisplayResultsDisplayLogic {

    var interactor: DisplayResultsBusinessLogic?
    var router: DisplayResultsWireframeLogic?
    var results: [ResultViewModel]?

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchController()
        configureTableView()
    }

    func configureSearchController() {
        let search = UISearchController(searchResultsController: nil)
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Ingresa tu búsqueda"
        search.searchBar.delegate = self
        navigationItem.searchController = search
    }

    func configureTableView() {
        tableView.register(ResultViewCell.self)
        tableView.estimatedRowHeight = 75.0
        tableView.rowHeight = UITableView.automaticDimension
    }

    func displayResults(with array: [ResultViewModel]) {
        results = array
        tableView.reloadData()
    }
}

extension DisplayResultsViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ResultViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        if let viewModel = results?[indexPath.row] {
            cell.configureWith(viewModel: viewModel)
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedResult = results?[indexPath.row] {
            interactor?.selectedResult(with: selectedResult.id)
            router?.goToDetailView()
        }
    }
}

extension DisplayResultsViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text else { return }
        interactor?.fetchResults(with: text)
    }
}
