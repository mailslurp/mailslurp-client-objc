# OAIImapMailboxStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The mailbox name. | 
**_readOnly** | **NSNumber*** | True if the mailbox is open in read-only mode. | 
**items** | **NSDictionary&lt;NSString*, NSObject*&gt;*** | Results map | 
**flags** | **NSArray&lt;NSString*&gt;*** | The mailbox flags. | 
**permanentFlags** | **NSArray&lt;NSString*&gt;*** | The mailbox permanent flags. | 
**unseenSeqNum** | **NSNumber*** | The sequence number of the first unseen message in the mailbox. | 
**messages** | **NSNumber*** | The number of messages in this mailbox. | 
**recent** | **NSNumber*** | The number of messages not seen since the last time the mailbox was opened. | 
**unseen** | **NSNumber*** | The number of unread messages. | 
**uidNext** | **NSNumber*** | The next UID. | 
**uidValidity** | **NSNumber*** | Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. | 
**appendLimit** | **NSNumber*** | Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


