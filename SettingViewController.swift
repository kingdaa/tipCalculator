import UIKit

class SettingViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    let defaults = NSUserDefaults.standardUserDefaults()
    

    @IBAction func change2(sender: AnyObject) {
        defaults.setDouble(0.7, forKey: "last_tip")
        defaults.synchronize()
    }
    
    @IBAction func change1(sender: AnyObject) {
        defaults.setDouble(0.9, forKey: "last_tip")
        defaults.synchronize()
    }

}
