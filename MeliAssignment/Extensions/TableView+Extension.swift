//
//  TableView+Extension.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 30/06/21.
//

import UIKit

extension UITableView {

    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        return cell
    }

    func register<T: UITableViewCell>(_: T.Type) {
        let nib = UINib(nibName: T.defaultReuseIdentifier, bundle: nil)
                register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
}

extension UITableViewCell: ReusableView {}
