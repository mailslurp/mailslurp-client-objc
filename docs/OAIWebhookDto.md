# OAIWebhookDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basicAuth** | **NSNumber*** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] 
**createdAt** | **NSDate*** | When the webhook was created | [optional] 
**_id** | **NSString*** | ID of the Webhook | [optional] 
**inboxId** | **NSString*** | The inbox that the Webhook will be triggered by | [optional] 
**method** | **NSString*** | HTTP method that your server endpoint must listen for | [optional] 
**name** | **NSString*** | Name of the webhook | [optional] 
**payloadJsonSchema** | **NSString*** | JSON Schema for the payload that will be sent to your URL via the HTTP method described. | [optional] 
**updatedAt** | **NSDate*** |  | 
**url** | **NSString*** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


