//
//  DetailViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import UIKit

class DetailViewController: UIViewController, DetailDisplayLogic {

    var interactor: DetailBusinessLogic?

    @IBOutlet weak var itemIconImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemSellerLabel: UILabel!
    @IBOutlet weak var itemShippingLabel: UILabel!
    @IBOutlet weak var itemQuantityLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getSelectedItem()
    }

    func displaySelectedItem(item: DetailViewModel) {
        itemTitleLabel.text = item.title
        itemSellerLabel.text = item.seller
        itemShippingLabel.text = item.stShipping
        itemQuantityLabel.text = item.stQuantity
        itemPriceLabel.text = item.stPrice


        if let itemImageUrl = item.thumbnailURL {
            interactor?.fetchImageData(with: itemImageUrl, completionHandler: {[weak self] data in
                let image = UIImage(data: data)
                self?.itemIconImageView.image = image
            })
        }
    }

    @IBAction func didPressAddToCart(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Se ha agregado este item al carrito de compras", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
