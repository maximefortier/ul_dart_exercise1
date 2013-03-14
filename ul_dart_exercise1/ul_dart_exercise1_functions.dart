  part of ul_dart_exercise1;

  
  //This function calculates investment based on years and rate
  f_question1_1(num investment, num rate, num years) {
  var numberlist = [];
  var i = 0;
  var lastyearvalue = 0.0;
  rate = rate / 100;
  
  numberlist.add(investment);

  do{
    lastyearvalue = numberlist.elementAt(i);
    //print(lastyearvalue);
    numberlist.add(lastyearvalue * rate + lastyearvalue);
    i = i + 1;
  }
  while (numberlist.length <= years);
  
  return(numberlist);
}

f_question1_2(num items, num value) {
  var numberlist = [];
  var i = 1;
  do{
    
    numberlist.add(value * i);
    i = i + 1;
  }
  while (numberlist.length < items);
  
  return(numberlist);
}

f_question1_3(num items, num value) {
  var numberlist = [];
  var i = 1;
  do{
    
    numberlist.add(value * i);
    i = i + 1;
  }
  while (numberlist.length < items);
  
  return(numberlist);
  }

  //This function build christmas trees
  f_question1_4(num numberTotalChar,num numberOfStars,num startOfStars, var charToUse) {

    var builtString = '';
    
    var jg = 0;
    do{
      if(jg > ( startOfStars + 1) && jg < (numberTotalChar - (startOfStars + 2 )) ){
        builtString = builtString.concat(charToUse);
      }
      else{
        builtString = builtString.concat(' ');
      }
      jg++;
    }
    while (jg < numberTotalChar);
    return builtString;
      
 }
  
  
  Map<String, int> f_question1_5(String text, num numberToDiscard) {
    String textWoutSpaces = text.replaceAll('\n', '').
        replaceAll(' ', '').replaceAll('.', '');
    List charList = textWoutSpaces.split('');
    //print(charList);
    charList.sort((m,n) => m.compareTo(n));
    var charMap = {};
    for (var char in charList) {
      charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
    }
    
    return charMap;
  }
  
  //This function detects if string is a palindrome
  f_question1_6(var inputstring) {
    for (int i = 0; i < inputstring.length ~/ 2; i++) {
      if (inputstring[i] != inputstring[inputstring.length - i - 1]) return false;
    }
    return true;
  }
  
  //This function sort names based on their lenght
  f_question1_7(var inputNameList) {
    var arrayOfNames = inputNameList;
    var tempArrayOfNames = [];
    var resultText = '';
    
    resultText = resultText.concat('Names with less than 8 letters: ');
    
    for (var name in arrayOfNames) {
      //print(name);
      if(name.length < 8){
        tempArrayOfNames.add(name);
      }
    }
    resultText = resultText.concat(tempArrayOfNames.toString());
    tempArrayOfNames.clear();  

    resultText = resultText.concat('\nNames with 8 letters : ');
    
    for (var name in arrayOfNames) {
      //print(name);
      if(name.length == 8){
        tempArrayOfNames.add(name);
      }
    }
    resultText = resultText.concat(tempArrayOfNames.toString());
    tempArrayOfNames.clear();  
    
    resultText = resultText.concat('\nNames with more than 8 letters: ');  
    
    for (var name in arrayOfNames) {
      //print(name);
      if(name.length > 8){
        tempArrayOfNames.add(name);
      }
    }
    resultText = resultText.concat(tempArrayOfNames.toString());
    tempArrayOfNames.clear();  
    //print(resultText);
    
    return resultText;  
    
    
    
  }
  //Convert number grades to letter grades by using a standard.
  f_question1_9(int chiffre) {
    var Lettre = '';
    StringBuffer sb = new StringBuffer();
    sb.writeCharCode(chiffre);
    //characterlist = characterlist.concat(sb.toString());
    Lettre = Lettre.concat(sb.toString());
    return(Lettre);
  }