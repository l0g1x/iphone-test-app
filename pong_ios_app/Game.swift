import UIKit

class Game {
    var playerPaddle: Paddle
    var computerPaddle: Paddle
    var ball: Ball
    var ai: AI
    var isGameActive = false

    init() {
        playerPaddle = Paddle()
        computerPaddle = Paddle()
        ball = Ball()
        ai = AI()
    }

    func startGame() {
        isGameActive = true
        ball.resetPosition()
        playerPaddle.resetPosition()
        computerPaddle.resetPosition()
    }

    func updateGame() {
        if !isGameActive { return }
        ball.moveBall()
        playerPaddle.movePaddle()
        ai.movePaddle(computerPaddle, ball: ball)
        checkCollision()
    }

    func endGame() {
        isGameActive = false
    }

    private func checkCollision() {
        if ball.frame.intersects(playerPaddle.frame) || ball.frame.intersects(computerPaddle.frame) {
            ball.reverseDirection()
        }
        if ball.frame.origin.y <= 0 || ball.frame.origin.y + ball.frame.size.height >= UIScreen.main.bounds.height {
            endGame()
        }
    }
}