//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Voting is Ownable {
    struct Proposal {
        uint256 id;
        string description;
        uint256 yesVotes;
        uint256 noVotes;
    }

    mapping(uint256 => Proposal) public proposals;
    uint256 public proposalCount;

    function createProposal(string calldata description) external onlyOwner {
        proposalCount++;
        proposals[proposalCount] = Proposal({
            id: proposalCount,
            description: description,
            yesVotes: 0,
            noVotes: 0
        });
    }

    function vote(uint256 proposalId, bool isYesVote) external {
        require(
            proposalId > 0 && proposalId <= proposalCount,
            "Invalid Proposal ID"
        );
        Proposal storage proposal = proposals[proposalId];
        if (isYesVote) {
            proposal.yesVotes++;
        } else {
            proposal.noVotes++;
        }
    }
}
