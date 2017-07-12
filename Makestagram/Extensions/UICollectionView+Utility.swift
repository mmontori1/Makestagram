//
//  UICollectionView+Utility.swift
//  Makestagram
//
//  Created by Mariano Montori on 7/11/17.
//  Copyright © 2017 Mariano Montori. All rights reserved.
//

import UIKit

protocol CollectionCellIdentifiable {
    static var cellIdentifier: String { get }
}

extension CollectionCellIdentifiable where Self: UICollectionViewCell {
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: CollectionCellIdentifiable { }

extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(index : IndexPath) -> T where T: CollectionCellIdentifiable {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.cellIdentifier, for: index) as? T else {
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        
        return cell
    }
}
