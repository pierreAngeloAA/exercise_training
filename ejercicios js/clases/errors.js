console.log ("Errors class");

function run() {
  throw new Error("Ups!")
}

function catchError() {
  try {
    run();
  } catch (error){
    console.log("Atrape el error", error.message);
  }
}

catchError();
