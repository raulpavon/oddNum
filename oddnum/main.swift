//
//  main.swift
//  oddNum
//
//  Created by Raul Leonardo Pavon Toral on 05/01/22.
//
import Foundation

var a = [7] //should return 7, because it occurs 1 time (which is odd).
var b = [0] //should return 0, because it occurs 1 time (which is odd).
var c = [1,1,2] //should return 2, because it occurs 1 time (which is odd).
var d = [0,1,0,1,0] //should return 0, because it occurs 3 times (which is odd).
var e = [1,2,2,3,3,3,4,3,3,3,2,2,1] //should return 4, because it appears 1 tbmec
var f = [20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]

func findIt(_ seq: [Int]) -> Int {
    let array = seq.map { ($0, 1) }
    let dictionary = Dictionary(array, uniquingKeysWith: +)
    let filterDic = dictionary.filter { $0.value % 2 != 0 }
    return filterDic.keys.first ?? 0
}

let odd = findIt(a)
print(odd)
