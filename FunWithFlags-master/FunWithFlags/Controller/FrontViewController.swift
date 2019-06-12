
import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    var name = ""
    @IBAction func Start(_ sender: Any) {
        if username.text == "" {
            
            let alert = UIAlertController(title: "ERROR", message: "INTER USERNAME", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "OK", style: .cancel , handler: nil)
            alert.addAction(restartAction)
            self.present(alert, animated: true)

        } else {
            self.name = username.text!
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(controller, animated: true)
            
           

        }
    }
    
    
}
    
    

