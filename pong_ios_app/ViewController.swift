import UIKit

class ViewController: UIViewController {
    
    private var game: Game!
    private var gameView: View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        gameView = View(frame: self.view.frame, game: game)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        gameView.addGestureRecognizer(tap)
        
        self.view.addSubview(gameView)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if game.isGameActive {
            game.updateGame()
        } else {
            game.startGame()
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gameView.frame = self.view.frame
    }
}