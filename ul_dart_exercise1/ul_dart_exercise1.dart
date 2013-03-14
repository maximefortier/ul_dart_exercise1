// Exercise 1 for Universite Laval SIO 2109 - Dart Programming
// Available here: On Dart [Web Programming] (http://ondart.me/web_programming.md) course.
// Author: Maxime Fortier


library ul_dart_exercise1;

import 'dart:math';

part 'ul_dart_exercise1_functions.dart';


// Exercise 1 extracted from http://ondart.me/web_programming.md

main() {
  /*
  * 
  *      Q 1.1
  *
  *      Calculate a compound interest each year for 10 years, 
  *      for the initial investment of 1000$ with the fixed 
  *      interest rate of 3.3.
  *
  */
  
  print('----------------- Q1 ---------------');
  
  // Edit the values below to ajust the arguments sent to the function
  var initialInvestment = 1000; 
  var interestRate = 3.3;
  var numberOfYear = 10;
  // 
  
  print(f_question1_1(initialInvestment, interestRate, numberOfYear ));
  
  print('\n\n');
  
  /*
  * 
  *      Q 1.2
  *
  *      Calculate the first 100 terms of the 14 times table.
  *
  */
  
  print('----------------- Q2 ---------------');
  
  print(f_question1_2(100, 14)); 
  print('\n\n');
  
  /*
  * 
  *      Q 1.3
  *
  *      Create a function that handles the times table for any number. 
  *      Check the function with the result from 1.2.
  *
  */
  
  // This is exactely how I did it straight from the beginning... I've added variable to ease the input of parameters...
  
  print('----------------- Q3 ---------------');
  
  // Edit the values below to ajust the arguments sent to the function
  var numberOfItemsToGet = 100; 
  var numberToBeTimed = 14;
  // 
  
  print(f_question1_3(numberOfItemsToGet, numberToBeTimed));
  print('\n\n');

  /*
  * 
  *      Q 1.4
  *
  *      Write a function that displays, in a balanced way, 
  *      a tree with any height. 
  *
  */

  print('----------------- Q4 ---------------');

  
  // Edit the values below to ajust the arguments sent to the function
  var numberOfRows = 6; 
  var charToUse = '*';
  // End of want you can edit.
  
  
  var numberTotalChar = numberOfRows + 4;
  if(numberTotalChar.isEven){
    numberTotalChar ++;
  }
  var startOfStars = 0;
  
  startOfStars = numberOfRows / 2;
  startOfStars.round();
  
  var numberOfStars = 1;
  var jj = 0;
  do{
    print(f_question1_4(numberTotalChar,numberOfStars,startOfStars,charToUse));  
     jj++;
     numberOfStars = numberOfStars + 2;
     startOfStars = startOfStars - 1;
  }
  while (jj < numberOfRows );

  print('\n\n');

  /*
  * 
  *      Q 1.5
  *
  *      Count the number of occurrences of letters in a given sentence.
  *      Discard letters that have counts greater than 9. Discard also 
  *      letters that do not have unique counts for the sentence. Use the 
  *      rest of letters to code, with their counts, a given text (for 
  *      example, a paragraph) and decode the text back to the readable 
  *      version.
  *
  */

  print('----------------- Q5 ---------------'); 
 // Edit the values below to ajust the arguments sent to the function
  var numberToDiscard = 9; 
  var inputString = '''
                  A warning does not halt execution. 
                  It tells you a potential prooblem has been detected. 
                  The program will still be compiled and executed. 
                  ''';
  print('The complete list of letters with no discarded letters.');
  print(f_question1_5(inputString,0));
  print('\n');
  print('The letters with $numberToDiscard occurences will be discarded.');
  //print(f_question1_5(inputString,numberToDiscard));
  var listeDeCaracteres = f_question1_5(inputString,0);
  var listeASupprimer = {};
  //print(listeDeCaracteres);
  var listeDeKeys = listeDeCaracteres.keys.toList();
  var listeDeValues = listeDeCaracteres.values.toList();
  var indexList = 0;
  for(var laValue in listeDeValues){
    if(laValue == numberToDiscard )
    {
      var chartoDisplay = listeDeKeys[indexList];
      print('A letter to remove from the list was detected: $chartoDisplay');
      listeDeKeys.remove(chartoDisplay);      
    }
    indexList ++;
  }
  print('New list with characters removed:');
  print(listeDeKeys);
  print('\n\n');
  
  /*
  * 
  *      Q 1.6
  *
  *      Determine if a given string is a palindrome. A palindrome
  *      is a word, phrase, number, or other sequence of symbols 
  *      or elements, whose meaning may be interpreted the same way
  *      in either forward or reverse direction
  *
  */

  print('----------------- Q6 ---------------'); 

  // Edit the values below to ajust the arguments sent to the function
  var inputStringPalindrome = 'radar'; 

  
  print('String used: $inputStringPalindrome');
  
  if (f_question1_6(inputStringPalindrome)) {
    print('The given string is a palindrome');
  } else {
    print('The given string is not a palindrome');
  }
  print('\n\n');
  
  /*
  * 
  *      Q 1.7
  *
  *      Given a list of names, make three lists, 
  *      first with names shorter than 8 letters, 
  *      second with names longer than 8 letters, 
  *      and third with names that are 8 letters long.
  *
  */

  print('----------------- Q7 ---------------'); 

  // Edit the values below to ajust the arguments sent to the function
  var arrayOfNames = ['Sarah','Beth','Anna','Jade','Lucy','Danielle','Anna-Raphaelle','Brandy','Maryjane']; 

  print('Initial array of names: $arrayOfNames');
  
  print(f_question1_7(arrayOfNames));  
  print('\n\n');  

/*
 * 
 *      Q 1.8
 *      
 *      Prepare two lists, one with the names of players 
 *      and the other  with the names of clubs. 
 *      Make the third list with clubs ordered by their names, 
 *      where each club is followed by its players.
 */

print('----------------- Q8 ---------------'); 

// Edit the values below to ajust the arguments sent to the function


var mapOfClubs = new Map();
mapOfClubs[1] = 'Atlanta Bacon';
mapOfClubs[2] = 'Boston Box';
mapOfClubs[3] = 'Michigan Fish';
mapOfClubs[4] = 'Newark Planes';
mapOfClubs[5] = 'Orlando Oranges';


print('List of Clubs:');

mapOfClubs.forEach((k, v) => print('Team $k: $v'));

print('\n\n');


var mapOfPlayers =  new Map();
mapOfPlayers['Bob Louis'] = 1;
mapOfPlayers['Adam Lee'] = 1;
mapOfPlayers['Bruce Lean'] = 3;
mapOfPlayers['Rob Andree'] = 1;
mapOfPlayers['Andrew Lewie'] = 2;
mapOfPlayers['Brue Madonn'] = 3;
mapOfPlayers['Gill Baker'] = 4;
mapOfPlayers['Sotry Bajk'] = 5;
mapOfPlayers['Jr McGussow'] = 3;
mapOfPlayers['Ratow Youlli'] = 5;
mapOfPlayers['Batrak Pioi'] = 4;
mapOfPlayers['Wy Ugan'] = 3;
mapOfPlayers['Mak Batow'] = 1;
mapOfPlayers['Rob Syn'] = 1;
mapOfPlayers['Darak Lan'] = 3;
mapOfPlayers['Rott Bawq'] = 1;
mapOfPlayers['Euwa Donn'] = 2;
mapOfPlayers['Magg Stat'] = 3;
mapOfPlayers['Riden Tak'] = 4;
mapOfPlayers['Magdda Turi'] = 5;
mapOfPlayers['Jaled Gado'] = 3;
mapOfPlayers['Matow Petri'] = 5;
mapOfPlayers['Wouta Joey'] = 4;
mapOfPlayers['Bana Jita'] = 3;

print('List of Players:');
mapOfPlayers.forEach((k, v) => print('$k'));
print('\n\n');

print('List of Clubs and associated players:');

var keysDeClub = mapOfClubs.keys.toList();
var valuesDeClub = mapOfClubs.values.toList();

var keysDePlayers = mapOfPlayers.keys.toList();
var valuesDePlayers = mapOfPlayers.values.toList();
var nomduPlayer;
var indexListClub = 0;
var indexListPlayers = 0;
for(var keyDeClub in keysDeClub){
  indexListPlayers = 0;
  var clubName = valuesDeClub[indexListClub];
  print('Name of the Team: $clubName');
  for(var valueDePlayer in valuesDePlayers){
    if(valueDePlayer == keyDeClub){
      nomduPlayer = keysDePlayers[indexListPlayers];
      print('------ $nomduPlayer');
    }
    
    
    
    indexListPlayers++;
  }
  indexListClub++;
}

print('\n\n');

//print(f_question1_8());  





/*
* 
*      Q 1.9
*
*      Convert number grades to letter grades by
*      using a standard.
*
*/

print('----------------- Q9 ---------------'); 
//Use the variable below to choose the number grade to convert to a lettre
int ConvertirNombre = 26;

print('The number [$ConvertirNombre] will be converted to a letter grade');
print('The ASCII Standard is leveraged to perform the conversion.');
print('Numbers between 1 and 26 are supported.');

if (ConvertirNombre < 1 || ConvertirNombre > 26){
  print('Unsupported. Number cannot be converted');
}
else{
  ConvertirNombre = ConvertirNombre + 64;
  print(f_question1_9(ConvertirNombre)); 
  
}
print('\n\n');

/*
* 
*      Q 1.10
*
*      Given any text, prepare a table for the ten 
*      most frequently used letters, with their count 
*      and the frequency use percentage with respect 
*      to other letters. Use a regular expression to 
*      exclude characters that are not letters.
*
*/

print('----------------- Q10 ---------------'); 

Map<String, int> letterFrequencyQ10(String text) {
  String textWoutSpaces = text.replaceAll('\n', '').
      replaceAll(' ', '').replaceAll('.', '');
  //print(textWoutSpaces);
  List charList = textWoutSpaces.split("");
  //print(charList);
  charList.sort((m,n) => m.compareTo(n));
  //print(charList);
  var charMap = {};
  for (var char in charList) {
    charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
  }
  return charMap;
}

  var text = '''
A warning does not halt execution.
It tells you a potential problem has been detected.
The program will still be compiled and executed.
''';
  
  //print(text);
  var topFrequency = letterFrequencyQ10(text);
  print(topFrequency);
  var FreqListeDeKeys = topFrequency.keys.toList();
  var FreqListeDeValues = topFrequency.values.toList();
  
}