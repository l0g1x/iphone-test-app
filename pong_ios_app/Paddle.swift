import UIKit

class Paddle {
    var position: CGPoint
    var speed: CGFloat
    var direction: CGFloat
    var size: CGSize

    init(position: CGPoint, speed: CGFloat, direction: CGFloat, size: CGSize) {
        self.position = position
        self.speed = speed
        self.direction = direction
        self.size = size
    }

    func movePaddle() {
        position.y += speed * direction
        if position.y < 0 {
            position.y = 0
        } else if position.y > UIScreen.main.bounds.height - size.height {
            position.y = UIScreen.main.bounds.height - size.height
        }
    }

    func drawPaddle(context: CGContext) {
        let rectangle = CGRect(x: position.x, y: position.y, width: size.width, height: size.height)
        context.setFillColor(UIColor.white.cgColor)
        context.fill(rectangle)
    }
}