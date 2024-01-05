
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SecondView: UIView!
    @IBOutlet weak var viewFirst: UIView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Button: UIButton!
    var rememberMe = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //   To display Shadow,Corner Radius
        
//        SecondView.layer.cornerRadius = 20.0
//        SecondView.layer.shadowColor = UIColor.red.cgColor
//        SecondView.layer.shadowRadius = 5.0
//        SecondView.layer.shadowOpacity = 2.0
      
//To display * to label,TextField
        let attributedString = NSMutableAttributedString(string: Label.text ?? "")
        let asteriskString = NSAttributedString(string: " *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        attributedString.append(asteriskString)
        Label.attributedText = attributedString
        
        
//To replace character
        
    let replacelabel = "Label"
    Label.text = replacelabel.replacingOccurrences(of: "e", with: "a")
        
    Button.addTarget(self, action: #selector(rememberMeButtonTapped), for: .touchUpInside)
    }

    @IBAction func Button(_ sender: UIButton) {
        
    }
    
    @objc func rememberMeButtonTapped() {
    rememberMe = !rememberMe
    Button.isSelected = rememberMe

    if rememberMe {
    print("Remember Me: \(Label.text ?? "")")
    } else {
    }
    }
}

