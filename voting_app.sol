pragma solidity ^0.4.18;

contract CryptoVoting {
    //to convert becuase we cant have the strings there 
    mapping (bytes32 => uint8) public votesReceived;
    
    bytes32[] public candidate_list;
    
    //who is voting 
    function whoVoted(bytes32[] candidate_name) public {
        candidate_list = candidate_name;
    }
    // how many votes 
    function howManyVotes(bytes32 candidate) public view returns (uint8){
        require(realVote(candidate));
        return votesReceived[candidate];
    }
    
    // add vote counter 
    function addVotes(bytes32 candidate ) public {
        require(realVote(candidate));
        votesReceived[candidate] += 1;
    }
    
    // did they actually votes
    function realVote(bytes32 candidate) view public returns (bool){
        for(uint i = 0; i < candidate_list.length; i++) {
            if (candidate_list[i] == candidate) {
            return true;
            }
        }
        return false;
    }
}
