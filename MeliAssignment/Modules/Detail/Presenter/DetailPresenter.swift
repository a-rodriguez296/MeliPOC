//
//  DetailPresenter.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import Foundation

class DetailPresenter: DetailPresentationLogic {

    weak var viewController: DetailDisplayLogic?

    func presentSelectedItem(item: ResultDAO) {
        let viewModel = DetailViewModel(id: item.id,
                                        title: item.title,
                                        seller: item.seller,
                                        price: item.price,
                                        thumbnail: item.thumbnail,
                                        shipping: item.shipping,
                                        quantity: item.quantity)
        viewController?.displaySelectedItem(item: viewModel)
    }
}
