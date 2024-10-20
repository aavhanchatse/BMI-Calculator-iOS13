
import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!

    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!

    var bmiValue: String = "0.0"

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value: Float = round(sender.value * 100) / 100
        heightLabel.text = String("\(value)m")
//        heightLabel.text = String(format: "%.2f", sender.value)
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String("\(Int(sender.value.rounded()))Kg")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = weightSlider.value / pow(heightSlider.value, 2)
     

        bmiValue = String(format: "%.1f", bmi)

//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1", bmi)
//
//        present(secondVC, animated: true, completion: nil)

        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultViewController
            destination.bmiValue = bmiValue
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
