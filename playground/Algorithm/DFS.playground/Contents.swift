import Foundation
var numbersCopy = [Int]()
var targetCopy = 0
var count = 0

func dfs(_ depth: Int, _ sum: Int){
    if depth == numbersCopy.count {
        if sum == targetCopy {
            count += 1
        }
        return
    }
    //자기 자신의 정의 안에다가 자기 자신 함수 넣는다? 재귀 recursive같은 건가?
    dfs(depth + 1, sum + numbersCopy[depth])
    dfs(depth + 1, sum - numbersCopy[depth])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    //DFS는 Depth First Search의 약자로 해당 가지를 타고 들어갈 때에 끝까지 타고 들어가는 모습을 보여준다.
    numbersCopy = numbers
    targetCopy = target
    dfs(0, 0)
    
    return count
}

//n개의 음이 아닌 정수가 있습니다. 이 수를 적절히 더하거나 빼서 타겟 넘버를 만들려고 합니다. 예를 들어 [1, 1, 1, 1, 1]로 숫자 3을 만들려면 다음 다섯 방법을 쓸 수 있습니다.
//
//-1+1+1+1+1 = 3
//+1-1+1+1+1 = 3
//+1+1-1+1+1 = 3
//+1+1+1-1+1 = 3
//+1+1+1+1-1 = 3
//사용할 수 있는 숫자가 담긴 배열 numbers, 타겟 넘버 target이 매개변수로 주어질 때 숫자를 적절히 더하고 빼서 타겟 넘버를 만드는 방법의 수를 return 하도록 solution 함수를 작성해주세요.
//
//제한사항
//주어지는 숫자의 개수는 2개 이상 20개 이하입니다.
//각 숫자는 1 이상 50 이하인 자연수입니다.
//타겟 넘버는 1 이상 1000 이하인 자연수입니다.
