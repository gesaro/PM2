
import UIKit

protocol colorSelectedDelegate {
    func didTapColor(text: String, color: UIColor)
}

class SelectionController: UIViewController {
    
    var selectionDelegate: colorSelectedDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func purpleOptionSelected(_ sender: Any) {
        selectionDelegate.didTapColor(text: "Morado", color: .purple)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func greenOptionSelected(_ sender: Any) {
        selectionDelegate.didTapColor(text: "Verde", color: .green)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func redOptionSelected(_ sender: Any) {
        selectionDelegate.didTapColor(text: "Rojo", color: .red)
        dismiss(animated: true, completion: nil)
    }
}
