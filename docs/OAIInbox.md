# OAIInbox

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **NSDate*** | When was the inbox created | [optional] 
**_description** | **NSString*** | Optional description of an inbox for labelling purposes | [optional] 
**emailAddress** | **NSString*** | The inbox&#39;s email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints. | [optional] 
**expiresAt** | **NSString*** | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. | [optional] 
**favourite** | **NSNumber*** | Is the inbox favourited | [optional] 
**_id** | **NSString*** | ID of the inbox | [optional] 
**name** | **NSString*** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] 
**tags** | **NSArray&lt;NSString*&gt;*** | Tags that inbox has been tagged with | [optional] 
**userId** | **NSString*** | ID of user that inbox belongs to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


