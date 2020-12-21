# OAIInbox

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **NSDate*** | When was the inbox created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. | [optional] 
**_description** | **NSString*** | Optional description of an inbox for labelling purposes | [optional] 
**emailAddress** | **NSString*** | The inbox&#39;s email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
**expiresAt** | **NSString*** | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. | [optional] 
**favourite** | **NSNumber*** | Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access | [optional] 
**_id** | **NSString*** | ID of the inbox. The ID is a UUID-V4 string. See the emailAddress property for the email address. | [optional] 
**name** | **NSString*** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] 
**tags** | **NSArray&lt;NSString*&gt;*** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
**userId** | **NSString*** | ID of user that inbox belongs to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


