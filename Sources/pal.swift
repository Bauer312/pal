public func isPalindromic(_ N: Int) -> Bool {
  let nString = String(N)
  let stringN = String(nString.characters.reversed())

  if nString == stringN {
    return true
  }
  return false
}

public func maxPalindromicProduct(_ N: Int) -> [Int] {
  var numDigits = N
  var numberString: String = ""

  while numDigits > 0 {
    numberString = numberString + "9"
    numDigits = numDigits - 1
  }
  if let numericValue = Int(numberString) {
    var currentMax = [0, 0, 0]
    var numA = numericValue
    var numB = numericValue

    while numA > 0 {
      while numB > 0 {
        let product = numA * numB
        if isPalindromic(product) == true {
          if product > currentMax[2] {
            currentMax = [numA, numB, product]
          }
          numB = 1
        }
        numB = numB - 1
      }
      numA = numA - 1
      numB = numericValue
    }

    return currentMax
  }

  return [0, 0, 0]
}
