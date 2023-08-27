import UIKit

class View: UIView {
    var ball: Ball!
    var playerPaddle: Paddle!
    var computerPaddle: Paddle!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(ball: Ball, playerPaddle: Paddle, computerPaddle: Paddle) {
        self.ball = ball
        self.playerPaddle = playerPaddle
        self.computerPaddle = computerPaddle
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        ball.draw(context: context)
        playerPaddle.draw(context: context)
        computerPaddle.draw(context: context)
    }
}