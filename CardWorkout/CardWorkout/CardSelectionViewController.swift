//
//  CardSelectionViewController.swift
//  CardWorkout
//
//  Created by richard Haynes on 12/27/22.
//

import UIKit

class CardSelectionViewController: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    
    var cards : [UIImage] = Deck.allCards
    
    var timer: Timer!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
   
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
}
