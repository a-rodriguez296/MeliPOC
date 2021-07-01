//
//  ResultViewCell.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 30/06/21.
//

import UIKit

class ResultViewCell: UITableViewCell {

    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productPriceLabel: UILabel!

    func configureWith(viewModel: ResultViewModel) {
        productTitleLabel.text = viewModel.title
        productPriceLabel.text = viewModel.stPrice

        if let url = viewModel.thumbnailURL {
            ApiClient.shared.donwloadAsset(with: url) {[weak self] data in
                let image = UIImage(data: data)
                self?.productImageView.image = image
            }
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        ApiClient.shared.cancelCurrentTask()
        productImageView?.image = nil
    }
    
}
