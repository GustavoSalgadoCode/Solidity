pragma solidity ^0.6.0;

contract SimpleStorage{
    //This will get initialized to Null value...=0
    uint256 favoriteNumber ;
    bool favoriteBool = true;
    string favoriteString = "Woah";
    int256 favoriteInt = 7;
    address favoriteAddress = 0x76771F4A36C1dA7D87eDeA69e37D2c9A3380F004;
    bytes32 favoriteByte ="Dog";

    struct People{
        uint256 favoriteNumber;
        string name;
    }

   // People public person = People({favoriteNumber: 3, name:"Gus"});

    People[] public people;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
        
    }
    //view read some state off blockchain, no state change aka transaction
    //public variables have view functions
    //pure are some type of function that purely does math

    function retreieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson (string memory _name, uint256 _favoriteNumber) public{
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
    }

}
