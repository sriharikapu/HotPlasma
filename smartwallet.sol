contract Admin {
    address admin;
    string adminName;
    string password;
    
	function Admin()
	{
	admin = msg.sender;
	}
	
	function setUserName(string userName)
	{
	if(admin != msg.sender) throw;
	adminName = userName;
	}
	function setPassword(string passphrase)
	{
	if(admin != msg.sender) throw;
	password = passphrase;
	}
	
	}
	
	
	
contract clientProfile
{
uint smartwalletClients;

struct userProfile{
address user;
string nationale;
string surname;
string nickname;
uint phoneNumber;
uint IDnumber;
uint userID;
userAddress smartwallet;
Details transactionIndex;
mapping(uint => Details) TranscDetails;
mapping(uint => userAddress) profAddress;
mapping(address  => Details) TransDetails;
mapping(address  => userAddress) proAddress;
}
struct userAddress
{
string houseNO;
string city;
string state;
string zipCode;
}
struct Details{
address user;
uint Amount;
string TranscType;
string Platform;
string Destination;
}


mapping(uint => userProfile) userAccounts;
mapping(address => userProfile) userIndex;

}

contract transactionDetails is clientProfile{

function createClientAccount() returns(uint _client, address param)
   {
    _client = smartwalletClients+1;
	param = msg.sender;
    userAccounts[_client].user = msg.sender;
	userIndex[param].user = msg.sender;
    userAccounts[_client].userID = _client;
	userIndex[param].userID = _client;
	smartwalletClients++;
    }
 function setClientNationality(string nationality) returns(uint _client, address param)
    {
     userIndex[msg.sender].nationale = nationality;
	 _client = userIndex[msg.sender].userID;
	 userAccounts[_client].nationale = nationality;
    }
function setClientSurname(string firstName) returns(uint _client, address param)
    {
  
      userIndex[msg.sender].surname = firstName;
	  _client = userIndex[msg.sender].userID;
	  userAccounts[_client].surname = firstName;
    }
function setClientNikName(string lastName) returns(uint _client, address param)
    {
   
      userIndex[msg.sender].nickname = lastName;
	  _client = userIndex[msg.sender].userID;
	  userAccounts[_client].nickname = lastName;
    }

function setClientPhoneNo(uint phoneNum) returns(uint _client, address param)
    {
   
      userIndex[msg.sender].phoneNumber = phoneNum;
	  _client = userIndex[msg.sender].userID;
	  userAccounts[_client].phoneNumber = phoneNum;
    }
function setClientID(uint identity) returns(uint _client, address param)
    {
   
      userIndex[msg.sender].IDnumber = identity;
	  _client = userIndex[msg.sender].userID;
	  userAccounts[_client].IDnumber = identity;
    }
	
function setClientAddress(string sethouseNO, string setcity, string setstate, string setzipCode) returns(uint _client, address param)
    {
   
	_client = userIndex[msg.sender].userID;
    userIndex[msg.sender].smartwallet.houseNO = sethouseNO;
	userAccounts[_client].smartwallet.houseNO = sethouseNO;
	 userIndex[msg.sender].smartwallet.city = setcity;
	 userAccounts[_client].smartwallet.city = setcity;
	 userIndex[msg.sender].smartwallet.state = setstate;
	 userAccounts[_client].smartwallet.state = setstate;
	userIndex[msg.sender].smartwallet.zipCode = setzipCode;
	userAccounts[_client].smartwallet.zipCode = setzipCode;
    }
	
    function setAmount(uint transAmount) returns(uint _client, address param)
   {
    userIndex[msg.sender].transactionIndex.Amount = transAmount;
	_client = userIndex[msg.sender].userID;
	userAccounts[_client].transactionIndex.Amount = transAmount;
    }
 function setTranscType(string transactionType) returns(uint _client, address param)
    {
    userIndex[msg.sender].transactionIndex.TranscType = transactionType;
	_client = userIndex[msg.sender].userID;
	userAccounts[_client].transactionIndex.TranscType = transactionType;
    }
function setPlatform(string pltf) returns(uint _client, address param)
    {
    userIndex[msg.sender].transactionIndex.Platform = pltf;
	_client = userIndex[msg.sender].userID;
	userAccounts[_client].transactionIndex.Platform = pltf;
    }
function setDestination(string dest) returns(uint _client, address param)
    {
    userIndex[msg.sender].transactionIndex.Destination = dest;
	_client = userIndex[msg.sender].userID;
	userAccounts[_client].transactionIndex.Destination = dest;
    }

	
function getClientEthAddress(uint _client) constant returns(address userAddress)
    {
     userAddress = userAccounts[_client].user;
    }	
	
function getClientNationality(uint _client) constant returns(string nationality)
    {
     nationality = userAccounts[_client].nationale;
    }
function getClientSurname(uint _client) constant returns(string firstName)
    {
     firstName = userAccounts[_client].surname;
    }
function getClientNikName(uint _client) constant returns(string lastName)
    {
     lastName = userAccounts[_client].nickname;
    }

function getClientPhoneNo(uint _client) constant returns(uint phoneNum)
    {
     phoneNum = userAccounts[_client].phoneNumber;
    }
function getClientID(uint _client) constant returns(uint identity)
    {
     identity =userAccounts[_client].IDnumber;
    }
	
function getClientAddressTuple(uint _client) constant returns(string sethouseNO, string setcity, string setstate, string setzipCode)
    {
  sethouseNO = userAccounts[_client].smartwallet.houseNO;
  setcity = userAccounts[_client].smartwallet.city;
  setstate = userAccounts[_client].smartwallet.state;
  setzipCode = userAccounts[_client].smartwallet.zipCode;
    }
	
function getTotalClientAccounts() constant returns(uint totalClients)
{
totalClients = smartwalletClients;
}

function getAmount(uint _client) constant returns(uint amnt)
    {
     amnt = userAccounts[_client].transactionIndex.Amount;
    }	
	
function getTranscType(uint _client) constant returns(string transctp)
    {
     transctp = userAccounts[_client].transactionIndex.TranscType;
    }
function getPlatform(uint _client) constant returns(string platf)
    {
     platf = userAccounts[_client].transactionIndex.Platform;
    }
function getDestination(uint _client) constant returns(string destn)
    {
     destn = userAccounts[_client].transactionIndex.Destination;
    }

	
	
		
function paramClientEthAddress(address param) constant returns(address userAddress)
    {
     userAddress = userIndex[param].user;
    }	
	
function paramClientNationality(address param) constant returns(string nationality)
    {
     nationality = userIndex[param].nationale;
    }
function paramClientSurname(address param) constant returns(string firstName)
    {
     firstName = userIndex[param].surname;
    }
function paramClientNikName(address param) constant returns(string lastName)
    {
	lastName = userIndex[param].nickname;
    }

function paramClientPhoneNo(address param) constant returns(uint phoneNum)
    {
     phoneNum = userIndex[param].phoneNumber;
    }
function paramClientID(address param) constant returns(uint identity)
    {
	
     identity = userIndex[param].IDnumber;
    }
	
function paramClientAddressTuple(address param) constant returns(string sethouseNO, string setcity, string setstate, string setzipCode)
    {
	
  sethouseNO = userIndex[param].smartwallet.houseNO;
  setcity = userIndex[param].smartwallet.city;
  setstate = userIndex[param].smartwallet.state;
  setzipCode = userIndex[param].smartwallet.zipCode;
    }
	

function paramAmount(address param) constant returns(uint amnt)
    {
     amnt = userIndex[param].transactionIndex.Amount;
    }	
	
function paramTranscType(address param) constant returns(string transctp)
    {
     transctp = userIndex[param].transactionIndex.TranscType;
    }
function paramPlatform(address param) constant returns(string platf)
    {
     platf = userIndex[param].transactionIndex.Platform;
    }
function paramDestination(address param) constant returns(string destn)
    {
     destn = userIndex[param].transactionIndex.Destination;
    }
}

