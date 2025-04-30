function canExecuteFastAttack(knightIsAwake){
  return !knightIsAwake
}

function canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake){
  if (knightIsAwake || archerIsAwake || prisonerIsAwake) {
    return true
  } else{
    return false
  }
}

function canSignalPrisoner(archerIsAwake, prisonerIsAwake) {
  if (!archerIsAwake && prisonerIsAwake) {
    return true
  }else{
    return false
  }
}

export function canFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent) {
  if (petDogIsPresent && !archerIsAwake) {
    return true;
  }

  if (prisonerIsAwake && !knightIsAwake && !archerIsAwake) {
    return true;
  }

  return false;
}
