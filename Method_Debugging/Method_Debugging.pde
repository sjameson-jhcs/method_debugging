
void setup(){
  surface.setVisible(false);
  int a = 3, b = 4, c = 5;
  println("Given the sides " + a + " and " + b + " the hypotenuse is: " + calculate_hypotenuse(a,b));
  println("Given an isoceles triangle with side length" + a + " the hypotenuse is: " + calculate_hypotenuse(a));
  println("Given the side " + a + " and the hypotenuse " + c + " the missing side is: " + calculate_side(a,c));
  println("Given the adjacent side " + a + " and opposite side " + b + " the missing angle is: " + calculate_angle(a,b,0));
  println("Given the adjacent side " + a + " and the hypotenuse " + c + " the missing angle is: " + calculate_angle(a,0,c));
}

double calculate_hypotenuse(double a, double b){
  a *= a;
  b *= b;
  double c = a + b;
  return Math.sqrt(c);
}

double calculate_hypotenuse(double a_or_b){
  a_or_b *= a_or_b;
  double c = a_or_b + a_or_b;
  return Math.sqrt(c);
}

double calculate_side(double a, double c){
  a *= a;
  c *= c;
  double b = c - a;
  return Math.sqrt(b);
}

double calculate_angle(double adjacent, double opposite, double hypotenuse){
  boolean is_valid_numbers = false;
  double angle = 0;
  if(adjacent > 0){
    if(opposite > 0){
      angle = Math.atan(opposite / adjacent);
      is_valid_numbers = true;
    }
    else if (hypotenuse > 0){
      angle = Math.acos(adjacent / hypotenuse);
      is_valid_numbers = true;
    }
  }
  else if(opposite > 0){
    if(hypotenuse > 0){
      angle = Math.asin(opposite / hypotenuse);
      is_valid_numbers = true;
    }
  }
  
  if(is_valid_numbers){
    return Math.toDegrees(angle);
  }
  else{
    println("Numbers are invalid. Must be at least 2 positive values");
    return 0;
  }
}
