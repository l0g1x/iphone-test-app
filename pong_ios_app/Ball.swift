import UIKit

class Ball {
    var position: CGPoint
    var velocity: CGVector
    var radius: CGFloat

    init(position: CGPoint, velocity: CGVector, radius: CGFloat) {
        self.position = position
        self.velocity = velocity
        self.radius = radius
    }

    func moveBall() {
        position.x += velocity.dx
        position.y += velocity.dy
    }

    func bounceX() {
        velocity.dx = -velocity.dx
    }

    func bounceY() {
        velocity.dy = -velocity.dy
    }

    func resetPosition() {
        position = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        velocity = CGVector(dx: 5, dy: 5)
    }
}