import UIKit

class UIDetailViewController: UIViewController {

    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productSub: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var rateButton: UIButton!
    
    var productSelected:Product?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = productSelected{
            productTitle.text=data.title
            productImage.setImage(with: data.image)
            productSub.text=data.category
//            productDescription.text="Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket."
            productDescription.text=data.description
            priceLabel.text="$\(data.price)"
            rateButton.setTitle("\(data.rating.rate)", for: .normal)
        }
    }
    
}
