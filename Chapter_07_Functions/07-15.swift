typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc{
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }

    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = -4// 현 위치

// 현 위치가 0보다 크면 전달되는 인자 값은 true, 작으면 false가 됩니다.
// 그러므로 0보다 크면 functionForMoveㅇ 안의 goLeft(_:) 함수가, 작으면 goRight(_:)함수가 할당될 것입니다.
let moveToZero: MoveFunc = functionForMove(position > 0)

// 원점에 도착하면 (현 위치가 0이면) 반복문 종료.
while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}

print("원점 도착!")
// -4...
// -3...
// -2...
// -1...
// 원점 도착!

