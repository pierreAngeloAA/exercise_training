
function isValidCommand(command) {
  let resultado = command.split(/[,.\s]/);
  return /chatbot/gi.test(resultado[0]);
}

function removeEmoji(message) {
  const regex = new RegExp('emoji\\d+', 'g');
  return message.replace(regex, '');
}

function checkPhoneNumber(number) {
  let regex = /^\(\+\d{2}\) \d{3}-\d{3}-\d{3}$/

  if (regex.test(number)) {
    return "Thanks! You can now download me to your phone.";
  } else{
    return `Oops, it seems like I can't reach out to ${number}`;
  }
}

function getURL(text) {
  const regex = /\b[\w.-]+\.(com|org|net|edu|gov|io)\b/g;
  return text.match(regex) || [];
}

function niceToMeetYou(fullName) {
  return fullName.replace(/(\w+), (\w+)/, 'Nice to meet you, $2 $1');
}





console.log(isValidCommand("Chatbot, play a song from the 80's."));
