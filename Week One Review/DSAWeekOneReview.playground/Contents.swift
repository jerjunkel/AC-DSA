//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving

let myArray: [Int] = [1,2,3,5,4]

func printSomeStuff(arr:[Int]){
    for _ in 0..<arr.count{
        for _ in 0..<arr.count{
            print("Blah")
        }
    }
    
}


//Big O Notation

//1) Write an algorithm with the following runtimes:

//a) O(1)

print("Test")

//b) O(n)

for i in myArray{
    print(i, terminator: "")
}
 
//c) O(nlog(n))

print(myArray.sorted{$0 > $1})

//d) O(n^2)
printSomeStuff(arr: myArray)

//e) O(n^3)

for _ in 0..<myArray.count{
    printSomeStuff(arr: myArray)
}
 
//f) O(n^4)

for _ in 0..<myArray.count{
    for _ in 0..<myArray.count{
        printSomeStuff(arr: myArray)
    }
}

//g) O(n^2 * log(n))

func sortThings(arr:[[Int]])->[[Int]]{
    var returnArr: [[Int]] = [[]]
    for interiorArra in arr{
        returnArr.append(interiorArra.sorted())
    }
    return returnArr
}


/*
2) Identify the runtimes of the following algorithms
*/

func problemA(myString: String) {
    for c in myString.characters {
        for d in myString.characters {
            print(c,d)
        }
    }
}
 
//Runtime: O(n^2)

func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]()
    for i in myArr { //O(n)
        print(i[0])  //O(1)
        otherArr.append(i) //O(1)
        print(myArr[i[0]].contains(3)) //
    }
}

//Runtime: O(n)

func problemC(myArr: [Int]) -> Bool {
    if myArr.count < 10_000 {
        return true
    } else {
        return myArr[3] + 4 == 8
    }
}

//Runtime: O(1)

func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0}
}

//Runtime:O(n)

func problemE(myArr: [Int]) -> [Int] {
    return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <)
}

//Runtime: O(n * logn)

func problemF(myArr: Int) {
    for i in 0..<myArr {
        print(i)
    }
}

//Runtime: O(n)

func problemG(myArr: [[[[[[String]]]]]]) {
    print(myArr[0][0][0][0][0].contains("hi!"))
}

//Runtime: O(n)

func problemH(arrOne: [Int], arrTwo: [Int]) {
    var counter = 0
    for numOne in arrOne {  //O(n)
        for numTwo in arrTwo {  //O(n)
            if arrOne.contains(numTwo) && arrTwo.contains(numOne) { // O(n) + O(n) =
                counter += 1
            }
        }
    }
}

//Runtime: O(n^2)

func problemI(isEnabled: Bool) {
    for _ in 0..<(isEnabled ? 10 : 1_000_000) {
        print("it's on!")
    }
}

//Runtime: O(1)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0ff3c0000.

//a)What is the memory address of the 1st element? - 0ff3c0000
//b)What is the memory address of the 2nd element? - 0ff3c0018
//c)What is the memory address of the 4th element? - 0ff3c0054
//d)What is the memory address of the 14th element? - 0ff3c00EA
//e)What is the memory address of the 52nd element?
//f)What is the memory address of the 58th element?



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast() //Constant time because you're accessing the last element in the array


//b)
myArr.contains(1) //Linar becuase it's going through each element in the array

//c
myArr.index(of: 9) //Linar becuase it's going through each element in the array


//d
myArr.count //Linar becuase it's going through each element in the array


//e
myArr.insert(8, at: 0) //Linar becuase it's going through each element in the array


//f
myArr.remove(at: 4) //Linar becuase it's going through each element in the array


//g
myArr.reverse() //Linar becuase it's going through each element in the array


//h
let h = myArr.sorted(by: >) //logn

//i
let i = myArr.map{$0 * 2} //Linar becuase it's going through each element in the array


//j
let j = myArr.filter{$0>0} //Linar becuase it's going through each element in the array


//k
let k = myArr.reduce(0, +) //Linar becuase it's going through each element in the array



//3) Given the array below write code that does the following:

let inputArray: [[Int]] = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
]

//a) Print out each element starting with the first row and ending with the last row
for i in inputArray{
    for r in i{
        print(r, terminator:" ")
    }
    print("")
}
//b) Print out each element starting with the first column and ending with the last column

for i in inputArray{
    for r in i{
        
    }
    
}
//c) Print out each diagonal
//d) Print out only numbers on the border
//e) Print out only numbers not on the border


//4) Sudoku
/*
Rules: The is a 9x9 gird where the objective is to place the numbers 1 to 9 in the empty squares so that each row, each column and each 3x3 box contains the same number only once.

Sudoku Example: https://github.com/C4Q/AC-DSA/blob/master/Arrays/Images/sudokuExamples.png
 
Exercise: Write a function that will check whether or not a fully filled sudoku board is a valid solution.

Input: 2D Array of Ints ranging from 1-9
Output: True or false
func checkSudokuBoard(sudokuBoard:[[Int]]) -> Bool {
    return true
}

*/






