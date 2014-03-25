// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Eiko Seino
//  2. Butler Bushyhead


//  1. "YOU SIGNED... WHO?!"

var  valKilmer = {
    name: "Val Kilmer",
    age:  50,
    quote: "I'll be your huckleberry"
  };
  
var merylStreep = {
  name: "Meryl Streep",
  age: 60,
  quote: "I'd like to thank the academy..."
  };


// Constructor function to create objects
// MAYBE look into Prototype, how it's used to extend objects

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";
shooterMcGavin.quote = "Hey";




//  2. "HERE THEY COME!"

var adamSandler = {
  name: "Adam Sandler",
  age: 47,
  quote: "That's your home! Are you too good for your home?!"
};

var kristenBell = {
  name: "Kristen Bell",
  age: 33,
  quote: "Do you wanna build a snowman?"
};

var jimCarrey = {
  name: "Jim Carrey",
  age: 52,
  quote: "...So you're telling me there's a chance? YEAH!"
  
};

//  3. "TIME IS MONEY!"

function Client(name, age, quote) {
  this.name = name;
  this.age = age;
  this.quote = quote;
};
// 4. "SHOW 'EM OFF!"

var clients = [valKilmer, merylStreep, adamSandler, kristenBell, jimCarrey, shooterMcGavin];

clients

// ** BONUS **
kristenBell.spouse = "Dax Shepard"

clients