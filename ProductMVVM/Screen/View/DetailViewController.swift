//
//  DetailViewController.swift
//  ProductMVVM
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productSubTitle: UILabel!
    @IBOutlet weak var ProductDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    @IBOutlet weak var productRate: UIButton!
    
    
//    var product:Product?{
//        didSet{
//            configureTheDetails()
//        }
//    }
    var productSelected:Product?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = productSelected{
            productTitle.text=data.title
            productImage.setImage(with: data.image)
            productSubTitle.text=data.category
            ProductDescription.text=data.description
//            ProductDescription.text="Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket."
            productPrice.text="$\(data.price)"
            productRate.setTitle("\(data.rating.rate)", for: .normal)
        }
    }
//    func configureTheDetails() {
//            // Use optional binding to safely unwrap 'product'
//            guard let product = product else {
//                return
//            }
//            productTitle.text = product.title
//            productImage.setImage(with: product.image)
//            productSubTitle.text = product.category
//            ProductDescription.text = product.description
//            productPrice.text = "$\(product.price)"
//        }
}
