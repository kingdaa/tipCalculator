import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLab: UILabel!
    @IBOutlet weak var totalLab: UILabel!
    @IBOutlet weak var tipChoose: UISegmentedControl!
    let lastValue = 0.25
    var tipPercent = [0.15, 0.18, 0.2]
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stopEditing(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func changeTip(sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[tipChoose.selectedSegmentIndex]
        print(tipPercent)
        tipLab.text = String(format: "$%0.2f", tip)
        totalLab.text = String(format: "$%0.2f", tip+bill)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let lastValue = defaults.doubleForKey("last_tip")
                print(lastValue)
        tipPercent = [0.15, 0.18,lastValue]
        print("view will appear")
        print(tipPercent)
    }
    

}

