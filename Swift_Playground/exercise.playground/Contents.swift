import UIKit
import Foundation

//EXERCISE 1
//write a swift program to compute the sum of the two integers. If the values are equal return the triple their sum.

            var str = "Hello, playground"

            let number1 = 10
            let number2 = 10
            var result : Int

            if number1 == number2 {
                result = (number1 + number2) * 3
                print(result)
            } else {
                result = number1 + number2
                print(result)
            }


//EXERCISE 2
//write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return the absolute difference

                let n = 61
                var result : Int

                if n - 51 < 0 {
                    result = 51 - n
                    print(result)
                } else {
                    result = n - 51
                    print(result)
                }

//EXERCISE 3
//write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.

            func isIt20(number1 : Int,number2 : Int) -> Bool {
                if number1 == 20 || number2 == 20 || number1 + number2 == 20 {
                    return true
                } else {
                    return false
                }
            }

            isIt20(number1: 20, number2: 0)


//EXERCISE 4
//write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.

        func IsDifferent(number1 : Int, number2 : Int) -> Bool {
            if (number1 > 0 && number2 < 0) || (number1 < 0 && number2 > 0) || (number1 < 0 && number2 < 0){
                return true
            } else {
                return false
            }
        }
        IsDifferent(number1: 10, number2: 5)

//EXERCISE 5
//write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.

            func addIs(x : String) {
                if x.hasPrefix("Is"){
                    print(x)
                } else {
                    
                    print("Is \(x)")
                }
            }

            addIs(x: "ok")

//EXERCISE 6
//write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0.str.length()-1 inclusive.

                func removeACharacter(word : String, x : Int) -> String {
                    let count = word.count
                    var wordVar = word

                    let index = word.index(word.startIndex, offsetBy: x - 1)

                    if count > 0 {
                        wordVar.remove(at: index)
                    }
                    return wordVar
                    
                }

                print(removeACharacter(word: "deneme", x: 3))

//EXERCISE 7
//write a Swift program to change the first and last character of a given string.

            func changeChar(word: String) -> String {
                var wordVar = word
                let firstChar = wordVar.remove(at: wordVar.startIndex)
                let findChar = wordVar.index(before: wordVar.endIndex)
                let lastChar = wordVar.remove(at: findChar)



                wordVar.append(firstChar)
                wordVar.insert(lastChar, at: (wordVar.startIndex))

                return wordVar
            }
            changeChar(word: "deneme")


//EXERCISE 8
//write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.

            func addLastChar(word: String) -> String {
                var newWord = word
                let lastChar = newWord.removeLast()
                let lastString = String(lastChar)
                
                return lastString + word + lastString
                
            }

            addLastChar(word: "deneme")


//EXERCISE 9
//write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.

            func multipleOf(number : Int) {
                if number % 3 == 0 || number % 5 == 0 {
                    print("\(number) multiple of 3 or multiple of 5")
                } else {
                    print("\(number) is not multiple of 3 or multiple of 5")
                }
            }
            multipleOf(number: 10)


//EXERCISE 10
//write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.

            func addChar(word: String) {
                let newWord = word.prefix(2)
                let twoChar = newWord + word + newWord
                print(twoChar)

            }
            addChar(word: "deneme")


//EXERCISE 11
//write a Swift program to test a given string whether it starts with "Is". Return true or false

            func startsWithIs(word: String) -> Bool {

                if word.hasPrefix("Is") {
                    return true
                } else {
                    return false
                }

            }
            startsWithIs(word: "Isdeneme")
            startsWithIs(word: "deneme")

//EXERCISE 12
//write a Swift program that return true if either of two given integers is in the range 10..30 inclusive

            func isInRange(firstNumber: Int, secondNumber: Int) -> Bool {
                if (10 <= firstNumber && firstNumber <= 30) || (10 <= secondNumber && secondNumber <= 30) {
                    return true
                } else {
                    return false
                }
            }
            isInRange(firstNumber: 5, secondNumber: 12)
            isInRange(firstNumber: 40, secondNumber: 4)


//EXERCISE 13
//write a Swift program to check if a given string begins with "fix", except the "f" can be any charater or number.

            func wordCheck(word: String) -> Bool {
                var newWord = word
                newWord.remove(at: newWord.startIndex)

                if newWord.hasPrefix("ix") {
                    return true
                } else {
                    return false
                }
            }

            wordCheck(word: "deneme")
            wordCheck(word: "1ixdeneme")

//EXERCISE 14
//write a Swift program to find the largest number among three given integers.

            func findTheBiggest(number1: Int, number2: Int, number3: Int) -> Int {
                if number1 > number2 && number1 > number3 {
                    return number1
                } else if number2 > number1 && number2 > number3 {
                    return number2
                } else if number3 > number1 && number3 > number2 {
                    return number3
                } else if number1 == number2 && number1 > number3 {
                    return number1
                } else if number2 == number3 && number2 > number1 {
                    return number3
                } else if number1 == number3 && number1 > number2 {
                    return number1
                } else {
                    return number1
                }
            }

            findTheBiggest(number1: 8, number2: 10, number3: 11)
            findTheBiggest(number1: 20, number2: 10, number3: 11)
            findTheBiggest(number1: 8, number2: 30, number3: 11)
            findTheBiggest(number1: 8, number2: 8, number3: 8)
            findTheBiggest(number1: 10, number2: 4, number3: 10)

//EXERCISE 15
//write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.

            func closeToTen(number1: Int, number2: Int) -> Int {
                let firstNum = abs(10 - number1)
                let secondNum = abs(10 - number2)

                if firstNum < secondNum {
                    return number1
                } else if firstNum > secondNum {
                    return number2
                } else {
                    return 0
                }


            }
            closeToTen(number1: 9, number2: 5)
            closeToTen(number1: -3, number2: 20)

//EXERCISE 16
//write a Swfit program that accept two integer values and test if they are both int the range 20..30 inclusive, or they are both int the range 30..40 inclusive

            func inRange(number1: Int, number2: Int) {
                if (number1 < 30 && number1 > 20) && (number2 < 30 && number2 > 20) {
                    print("They are in the range 20..30")
                } else if (number1 > 30 && number1 < 40) && (number2 > 30 && number2 < 40) {
                    print("They are in the range 30..40")
                } else {
                    print("false")
                }
                
            }

            inRange(number1: 28, number2: 14)
            inRange(number1: 21, number2: 24)
            inRange(number1: 32, number2: 35)

//EXERCISE 17
//write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range.

            func inRange(number1: Int, number2: Int) -> Int {
                if number1 > number2 {

                    if number1 > 20 && number1 < 30 {
                        return number1
                    } else {
                        return 0
                    }

                } else if number2 > number1 {
                    if number2 > 20 && number2 < 30 {
                        return number2
                    } else {
                        return 0
                    }
                } else if number1 == number2 {
                    if number1 > 20 && number1 < 30 {
                        return number1
                    } else {
                        return 0
                    }
                } else {
                    return 0
                }

            }
            inRange(number1: 24, number2: 10)
            inRange(number1: 11, number2: 25)
            inRange(number1: 30, number2: 40)

//EXERCISE 18
//write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.


            func sameDigit(number1: Int, number2: Int) -> Bool {
                if number1 > 0 && number2 > 0 {
                    let firstLastDigit = number1 % 10
                    let secondLastDigit = number2 % 10

                    if firstLastDigit == secondLastDigit {
                        return true
                    } else {
                        return false
                    }
                } else {
                    return false
                }
                
            }

            sameDigit(number1: 123, number2: 2453)
            sameDigit(number1: 123, number2: 124)

//EXERCISE 19
//write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.

            func upperLowerCase(word: String) -> String {
                var newWord = word
                let lastThreeChar = newWord.suffix(3).uppercased()

                if word.count < 3 {
                    return newWord.lowercased()
                } else {
                    newWord.removeLast(3)
                    newWord.append(contentsOf: String(lastThreeChar))
                    return newWord
                }
            }


            print(upperLowerCase(word: "DEnemE"))
            print(upperLowerCase(word: "deneme"))
            print(upperLowerCase(word: "tr"))


//EXERCISE 20
//write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".

            func checkChar(input: String) {

                if input.contains("a") {


                    let frstIndex = input.firstIndex(of: "a")

                    var newWord = input
                    newWord.remove(at: frstIndex!)


                    
                    let range: Range<String.Index> = newWord.range(of: "a")!
                    let indexes: Int = newWord.distance(from: frstIndex!, to: range.lowerBound)
                    
                    if indexes == 0 {
                        print("1")
                    } else {
                        print("0")
                    }

                } else {
                    print("0")
                }

            }

            checkChar(input: "swifata")
            checkChar(input: "swifaatt")
            checkChar(input: "swift")
            checkChar(input: "swaftaa")


//EXERCISE 21
//write a Swift program to create a string made of every other char starting with the first from a given string. So "Python" will return "Pto

            func newString(word: String) {
                var newWord = ""

                
                for (charIndex, char) in word.enumerated() {
                    if charIndex % 2 == 0 {
                        newWord.append(char)
                    }


                }

                print(newWord)
            }
            newString(word: "Python")



//EXERCISE 22
//write a Swift program to count the number of 7's in a given string.

            func numberOf(input: String) {
                var numberSeven : Int = 0

                    for contains in input {

                        if contains == "7" {
                            numberSeven = numberSeven + 1

                        }
                    }
                     print(numberSeven)
            }

            numberOf(input: "123472137")

//EXERCISE 23
//write a Swift program to check if one of the first 4 elements in a given array of integers is a 7. The length of the array may be less than 4

            func checkSeven(input: [Int]) {

                
                if input.count >= 4 {
                    let firstFourDigit = input.prefix(4)

                    if firstFourDigit.contains(7) {
                        print("7 is in the first 4 elements")
                    } else {
                        print("7 isn't in the first 4 elements")
                    }

                } else {
                    print("less than 4 elements")
                }

            }

            checkSeven(input: [1, 2, 7, 3, 4])
            checkSeven(input: [1, 2, 3, 4, 7])
            checkSeven(input: [1, 2, 7])

//EXERCISE 24
//write a Swift program to test if the sequence of numbers 0, 1, 2 appears in a given array of integers somewhere.

            func testArray(numberArray: [Int]) -> Bool {
                for (index, number) in numberArray.enumerated() {

                    let secondIndex = index + 1
                    let thirdIndex = index + 2
                    
                    if secondIndex < numberArray.endIndex && number == 1 && numberArray[secondIndex] == 2  && numberArray[thirdIndex] == 3 {
                        return true
                    }

                }
                return false
            }

            testArray(numberArray: [0, 1, 1, 2, 3, 1])
            testArray(numberArray: [0, 1, 1, 2, 4, 1])
            testArray(numberArray: [1, 1, 2, 0, 1, 2, 3])
//

//EXERCISE 25
//write a Swift program to create a new string where all the character "a" have been removed except the first and last positions.

                func removeA(word: String) -> String {

                    var newWord = word
                    let startingIndex = newWord.index(after: newWord.startIndex)
                    let endingIndex = newWord.index(before: newWord.endIndex)

                    
                    var lastChar = String(newWord[startingIndex ..< endingIndex])
                    
                    


                        while lastChar.contains("a") {
                            lastChar.remove(at: lastChar.firstIndex(of: "a")!)
                        }

                        newWord.replaceSubrange((startingIndex ..< endingIndex), with: lastChar)
                    
                    
                    return String(newWord)
                   
                }


                print(removeA(word: "abaka"))
                print(removeA(word: "abababababba"))

//EXERCISE 26
//write a Swift program to create a string taking characters at indexes 0, 2, 4, 6, 8, .. from a given string.

                func takeChar (_ word: String) -> String {
                    var word = word
                    var count = 1

                    while count < word.count {
                        word.remove(at: word.index(word.startIndex, offsetBy: count))
                        count += 1
                        print(word.count)
                    }

                    return word
                }

                print(takeChar("Pyhton"))
                print(takeChar("Swift"))

//EXERCISE 27
//write a Swift program to count the number of times that two 7's are next to each other in a given array of integers.

                func countSeven (numbers : [Int]) {
                    var count = 0

                    for (index, number) in numbers.enumerated() {
                        let nextIndex = index + 1
                        
                        if nextIndex < numbers.endIndex && number == 7 && numbers[nextIndex] == 7 {
                            count += 1
                        }
                    }
                    
                    print(count)
                    
                }

                countSeven(numbers: [7, 7, 7])
                countSeven(numbers: [5,6,7,1])
                countSeven(numbers: [7, 7, 8, 7, 6, 7, 7])

//EXERCISE 28
//write a Swift program to test whether a value presents sequentially three times in an array of integers or not.

                func presentsThreeTimes (numbers : [Int]) -> Bool {
                    
                    for (index, number) in numbers.enumerated()  {
                        let secondIndex = index + 1
                        let thirdIndex = index + 2
                        
                        if thirdIndex < numbers.endIndex && number == numbers[secondIndex] && numbers[secondIndex] == numbers[thirdIndex]  {
                            return true
                        } else {
                            return false
                        }
                        
                    }
                    return false
                    
                }

                presentsThreeTimes(numbers: [1, 1, 2])
                presentsThreeTimes(numbers: [1, 1, 1])
