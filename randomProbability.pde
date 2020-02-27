//Creates 6 random numbers between 1 and 6. Sorts them and puts those numbers into an array.
//Calculates the probability of choosing those unique numbers at random

int[] randomNumArray = new int[6];
float arrayLength = randomNumArray.length;
for (int i = 0; i < arrayLength; i++) {
  int randomNum = int(random(6) + 1);
  randomNumArray[i] = randomNum;
}
randomNumArray = sort(randomNumArray);
println("Your random numbers are: ");
for (int i = 0; i < arrayLength; i++) {
  println(randomNumArray[i]);
}
int current = 0;
float count = 0;

for (int i = 0; i < arrayLength; i++) {
  if (randomNumArray[i] != current) {
    if (count > 0) {
      //println(current + " appears " + count + " times.");
      println("There is about a " + Math.round((count/arrayLength)*100) + "% chance of choosing " + current + " at random");
    }
    current = randomNumArray[i];
    count = 1;
  } else {
    count++;
  }
}
if (count > 0) {
  println("There is about a " + Math.round((count/arrayLength)*100) + "% chance of choosing " + current + " at random");
}
