pragma solidity ^0.4.0;


contract PubsubContract {

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
}
