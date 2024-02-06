//
//  ScrollViewController.swift
//  ProductMVVM
//
//  Created by Nishant Chauhan on 24/01/24.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var HeadLineLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratebutton: UIButton!
    
    
    
    var productSelected:Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = productSelected{
            HeadLineLabel.text=data.title
            productImage.setImage(with: data.image)
            subTitle.text=data.category
//            descriptionLabel.text="Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket."
            descriptionLabel.text=data.description
            priceLabel.text="$\(data.price)"
            ratebutton.setTitle("\(data.rating.rate)", for: .normal)
        }
    
    }

}

