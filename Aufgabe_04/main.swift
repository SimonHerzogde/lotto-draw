//
//  main.swift
//  Aufgabe_04
//
//  Created by Simon Herzog on 11.03.21.
//

/*
 Beschreibung der Aufgabelösung
    1. Initialisierung eines Arrays mit den 49 Lottozahlen
    2. Es wird eine Zufallszahl zwischen 0 und anfangs 48, da der Index des Arrays von 0 bis 48 geht, generiert, z.B. 5
    3. Dann wird aus dem Array die Lottozahl, passend zur generierten Zufallszahl, aufgerufen, z.B. wäre das bei der ersten Ziehung zum Index 5 die Lottozahl 6 und diese wird auch gleich als gezogene Lottozahl in der Konsole ausgegeben
    4. Danach wird Lottozahl 6 aus dem Array (mit Index 5) entfernt, da ja jede Zahl nur einmal verwendet werden darf.
    5. Zuletzt wird noch die obere Grenze (anfangs 48) für die Generierung der Zufallszahl um eins reduziert, da ja auch eine Lottozahl aus dem Pool der Lottozahlen entfernt wurde
    6. Dieser Vorgang wird für jede Ziehung, also insgesamt 6 mal, wiederholt
 */

import Foundation

//Array mit den Lotozahlen erstellen
var lottoNumbers = [1,2,3,4,5,6,7,8,9,10,
                   11,12,13,14,15,16,17,18,19,20,
                   21,22,23,24,25,26,27,28,29,30,
                   31,32,33,34,35,36,37,38,39,40,
                   41,42,43,44,45,46,47,48,49]

//Funktion zum Ziehen der Lottozahlen
func drawLottoNumbers() {
    //Var für obere Grenze die zur Initialisierung die Anzahl der Elemente in lottoNumbers(49) -1, also 48 zugewiesen bekommt. 48 und nicht 49 deshalb, weil in einem Array bei 0 zu zählen begonnen wird und da sonst per Zufall die Nr. 49 zugewiesen werden könnte und beim Zugriff auf das Array beim Index 49 die Grenze überschritten werden könnte, was zu einem Absturz führt.
    var upperBound = 48
    
    print("++++ Die Lottozahlen 6 aus 49 ++++\n")
    //for-schleife die sechs mal durchlaufen wird
    for draw in 1...6 {
        //Konstante die den zufälligen Index der zu ziehenden Zahl zwischen 0 und upperBound (= anfangs 48) zugewiesen bekommt
        let randomNumber = Int.random(in: 0...upperBound)
        
        //Ausgabe der Ziehung mit Ziehungsnummer und der gezogenen Lottozahl, die über den Wert von randomNumber als Index aufgerufen wird
        print("Ziehung Zahl \(draw): \(lottoNumbers[randomNumber])")
        //Die gezogene Lottozahl wird aus dem Array entfernt
        lottoNumbers.remove(at: randomNumber)
        //Die obere Grenze wird um eins reduziert, da sonst beim Zugriff auf das Array die Grenze überschritten werden könnte
        upperBound -= 1
        
    }
    print("\n----------------------------------\n")
}

//Aufruf der Funktion drawLottoNumbers
drawLottoNumbers()

