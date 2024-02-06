import UIKit
class ProductListViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var productTableView:UITableView!
    private var viewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productTableView.delegate=self
        productTableView.dataSource=self
        
       configuration()
        }
        
    }
extension ProductListViewController{
    func configuration(){
        productTableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        initViewModel()
        observewEvent()
    }
    func initViewModel(){
        viewModel.fetchProducts()
    }
    //Data binding event observe krega  --commuicate yha hoga
    func observewEvent(){
        viewModel.eventHandler = {[weak self ] event in
            guard let self else{ return }
            
            switch event{
            case .loading:break
            case .stopLoading:break
            case .dataLoaded:
                print(self.viewModel.products)
                DispatchQueue.main.async {
                    self.productTableView.reloadData()
                }
            case .error(let error):
                print(error ?? "NIL")
            }
             
            
        }
    }
}

extension ProductListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.products.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as?
                ProductCell else {
            return UITableViewCell()
        }
        let product=viewModel.products[indexPath.row]
        cell.product=product
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextScreen=DetailViewController()
        let product=viewModel.products[indexPath.row]
        print(product)
        nextScreen.productSelected=product
        self.navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.layer.transform=CATransform3DMakeScale(0.1, 0.1, 1.0)
        
        UIView.animate(withDuration: 1.0, animations: {
            cell.layer.transform=CATransform3DMakeScale(1.0, 1.0, 1.0)
        })
    }
}


