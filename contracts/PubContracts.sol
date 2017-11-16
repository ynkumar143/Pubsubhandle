pragma solidity ^0.4.0;


contract PubContracts {

    Subscription[] public subscriptions;

    struct Subscription{
    bytes32 UserName;
    bytes32 Topic;
    bytes32 MailId;
    }

    function addSubscription(bytes32 _UserName, bytes32 _Topic, bytes32 _MailId) returns (bool success){
        Subscription memory newSubscription;
        newSubscription.UserName = _UserName;
        newSubscription.Topic = _Topic;
        newSubscription.MailId = _MailId;
        subscriptions.push(newSubscription);
        return true;
    }

    function getSubscriptionDetails() constant returns (bytes32[], bytes32[], bytes32[]){

        uint length = subscriptions.length;

        bytes32[] memory usernames = new bytes32[](length);
        bytes32[] memory topics = new bytes32[](length);
        bytes32[] memory mailids = new bytes32[](length);

        for (uint i=0; i < length; i++){
            Subscription memory currentSubscription;

            currentSubscription = subscriptions[i];

            usernames[i] = currentSubscription.UserName;
            topics[i] = currentSubscription.Topic;
            mailids[i] = currentSubscription.MailId;
        }

        return (usernames, topics, mailids);
    }
}
