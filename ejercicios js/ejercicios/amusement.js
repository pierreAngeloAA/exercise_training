function createVisitor(name, age, ticketId){
  return {name: name, age: age, ticketId: ticketId}

}

function revokeTicket(visitor){
  visitor.ticketId = null
  return visitor
}

function ticketStatus(tickets, ticketId) {
  if (!(ticketId in tickets)) {
    return 'unknown ticket id';
  }

  if (tickets[ticketId] === null) {
    return 'not sold';
  }

  return `sold to ${tickets[ticketId]}`;
}

function simpleTicketStatus(tickets, ticketId){
  if (tickets[ticketId] === null || !(ticketId in tickets)) {
    return 'invalid ticket !!!';
  }
    return tickets[ticketId];
}


function gtcVersion(visitor){
  if (visitor.gtc){
    return visitor.gtc.version
  }
}



console.log(createVisitor('Verena Nardi', 45, 'H32AZ123'));

const visitor = {
  name: 'Verena Nardi',
  age: 45,
  ticketId: 'H32AZ123',
};

console.log(revokeTicket(visitor));

const tickets = {
  '0H2AZ123': null,
  '23LA9T41': 'Verena Nardi',
};

console.log(ticketStatus(tickets, '23LA9T41'));

console.log(simpleTicketStatus(tickets, '23LA9T41'));


const visitorNew = {
  name: 'Verena Nardi',
  age: 45,
  ticketId: 'H32AZ123',
  gtc: {
    signed: true,
    version: '2.1',
  },
};

console.log(gtcVersion(visitorNew));

