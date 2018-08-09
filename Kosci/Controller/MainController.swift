
//  Kosci
//
//  Created by Patisonek on 07/08/2018.
//  Copyright © 2018 Patisonek. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
 
    
    
    // MARK: - View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImg()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    //MARK: - Button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
      updateDiceImg()

        
    }
    
    
    @IBAction func holdButton(_ sender: UILongPressGestureRecognizer) {
        
      updateDiceImg()
        
    
    }
    
    
    
   
    //MARK: - My Methods
    func updateDiceImg(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
  
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImg()

    }
    
    
}
