import UIKit


class SwiftRobotControlCenter: RobotControlCenter {
    
    /*
     dz1
     //L2H/L22H - достроить колонны done
     L2C/L3C - обойти вершины
     L4H/L55H/L555H - r печенки по углам
     мира с учетом неизвестного
     положения и позиции
     L1C/L11C - удвоить конфеты на том же месте
     L4H/L55H/L555H - шахматка L4H/L55H/L555H - найти центр мира
     */
    
    override func viewDidLoad() {
        
        levelName = "L3c"
        
        super.viewDidLoad()
    }
    
    
    func L0C() {
        move()
        doubleMove()
        pick()
        doubleMove()
        turnRight()
        if frontIsClear {
            move()
            put()
            turnLeft()
            doubleMove()
        } else {
            turnRight()
            put()
        }
    }
    
    func forLoopExample() {
        for _ in 0..<12 {
            move()
            put()
        }
    }
    
    func whileLoopExample() {
        while noCandyPresent {
            if frontIsClear {
                move()
            } else {
                break
            }
            turnLeft()
            turnRight()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        moveAroundThePeaks()
        
    }
    
    func moveAroundThePeaks() {
        for _ in 0..<14 {
            makeStep()
        }
    }
    
    func makeStep() {
        if frontIsClear {
            move()
        }
        else {
            moveAroundPeak()
            
        }
    }
    
    func moveAroundPeak() {
        turnAlongPeak()
        moveToEndOfPeak()
        uTurn()
        moveToStartOfPeak()
        turnAlongPeak()
    }
    
    func turnAlongPeak() {
        turnRight()
    }
    
    func moveToEndOfPeak() {
        while leftIsBlocked {
            move()
        }
    }
    
    func uTurn() {
        turnLeft()
        move()
        turnLeft()
    }
    
    func moveToStartOfPeak() {
        moveToWall()
    }
    
    func moveToWall() {
        while frontIsClear {
            move()
        }
    }
    
    func doubleMove() {
        move()
        move()
    }
    
    func turnLeft() {
        for _ in 0..<3 {
            turnRight()
        }
    }
    
}


