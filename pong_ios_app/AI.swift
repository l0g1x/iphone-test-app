import UIKit

class AI {
    var paddle: Paddle
    var ball: Ball
    
    init(paddle: Paddle, ball: Ball) {
        self.paddle = paddle
        self.ball = ball
    }
    
    func update() {
        if ball.direction.y > 0 {
            let futurePosition = ball.position.x + (ball.direction.x * (UIScreen.main.bounds.height - ball.position.y) / ball.direction.y)
            if futurePosition > paddle.position.x + paddle.size.width / 2 {
                paddle.moveRight()
            } else if futurePosition < paddle.position.x - paddle.size.width / 2 {
                paddle.moveLeft()
            }
        }
    }
}