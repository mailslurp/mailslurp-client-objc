#import "OAIInboxControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICountDto.h"
#import "OAICreateInboxDto.h"
#import "OAICreateInboxRulesetOptions.h"
#import "OAIEmailPreview.h"
#import "OAIFlushExpiredInboxesResult.h"
#import "OAIInboxDto.h"
#import "OAIInboxExistsDto.h"
#import "OAIInboxRulesetDto.h"
#import "OAIPageEmailPreview.h"
#import "OAIPageInboxProjection.h"
#import "OAIPageInboxRulesetDto.h"
#import "OAIPageOrganizationInboxProjection.h"
#import "OAIPageSentEmailProjection.h"
#import "OAIPageTrackingPixelProjection.h"
#import "OAISendEmailOptions.h"
#import "OAISentEmailDto.h"
#import "OAISetInboxFavouritedOptions.h"
#import "OAIUpdateInboxOptions.h"


@interface OAIInboxControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIInboxControllerApi

NSString* kOAIInboxControllerApiErrorDomain = @"OAIInboxControllerApiErrorDomain";
NSInteger kOAIInboxControllerApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
/// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
///  @param aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID  (optional)
///
///  @param tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI  (optional)
///
///  @param optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails  (optional)
///
///  @param optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith  (optional)
///
///  @param useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes  (optional)
///
///  @param isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering  (optional)
///
///  @param optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX  (optional)
///
///  @param numberOfMillisecondsThatInboxShouldExistFor  (optional)
///
///  @param dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization  (optional)
///
///  @param hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom  (optional)
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) createInboxWithACustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID: (NSString*) aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID
    tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI: (NSArray<NSString*>*) tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI
    optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails: (NSString*) optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails
    optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith: (NSString*) optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith
    useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes: (NSNumber*) useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes
    isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering: (NSNumber*) isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering
    optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX: (NSDate*) optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX
    numberOfMillisecondsThatInboxShouldExistFor: (NSNumber*) numberOfMillisecondsThatInboxShouldExistFor
    dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization: (NSNumber*) dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization
    hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom: (NSString*) hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID != nil) {
        queryParams[@"A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID."] = aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID;
    }
    if (tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI != nil) {
        queryParams[@"Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI."] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI format: @"multi"];
    }
    if (optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails != nil) {
        queryParams[@"Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails."] = optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails;
    }
    if (optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith != nil) {
        queryParams[@"Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with"] = optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith;
    }
    if (useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes != nil) {
        queryParams[@"Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types."] = [useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes isEqual:@(YES)] ? @"true" : @"false";
    }
    if (isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering != nil) {
        queryParams[@"Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering"] = [isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering isEqual:@(YES)] ? @"true" : @"false";
    }
    if (optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX != nil) {
        queryParams[@"Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX."] = optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX;
    }
    if (numberOfMillisecondsThatInboxShouldExistFor != nil) {
        queryParams[@"Number of milliseconds that inbox should exist for"] = numberOfMillisecondsThatInboxShouldExistFor;
    }
    if (dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization != nil) {
        queryParams[@"DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization."] = [dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom != nil) {
        queryParams[@"HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;."] = hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Create an inbox ruleset
/// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
///  @param inboxId  
///
///  @param createInboxRulesetOptions  
///
///  @returns OAIInboxRulesetDto*
///
-(NSURLSessionTask*) createInboxRulesetWithInboxId: (NSString*) inboxId
    createInboxRulesetOptions: (OAICreateInboxRulesetOptions*) createInboxRulesetOptions
    completionHandler: (void (^)(OAIInboxRulesetDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createInboxRulesetOptions' is set
    if (createInboxRulesetOptions == nil) {
        NSParameterAssert(createInboxRulesetOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createInboxRulesetOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = createInboxRulesetOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxRulesetDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxRulesetDto*)data, error);
                                }
                            }];
}

///
/// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
/// 
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) createInboxWithDefaultsWithCompletionHandler: 
    (void (^)(OAIInboxDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/withDefaults"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Create an inbox with options. Extended options for inbox creation.
/// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
///  @param createInboxDto  
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) createInboxWithOptionsWithCreateInboxDto: (OAICreateInboxDto*) createInboxDto
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    // verify the required parameter 'createInboxDto' is set
    if (createInboxDto == nil) {
        NSParameterAssert(createInboxDto);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createInboxDto"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/withOptions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = createInboxDto;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Delete all inboxes
/// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
///  @returns void
///
-(NSURLSessionTask*) deleteAllInboxesWithCompletionHandler: 
    (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete inbox
/// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
///  @param inboxId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Does inbox exist
/// Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
///  @param emailAddress Email address 
///
///  @returns OAIInboxExistsDto*
///
-(NSURLSessionTask*) doesInboxExistWithEmailAddress: (NSString*) emailAddress
    completionHandler: (void (^)(OAIInboxExistsDto* output, NSError* error)) handler {
    // verify the required parameter 'emailAddress' is set
    if (emailAddress == nil) {
        NSParameterAssert(emailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/exists"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxExistsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxExistsDto*)data, error);
                                }
                            }];
}

///
/// Remove expired inboxes
/// Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
///  @param before Optional expired at before flag to flush expired inboxes that have expired before the given time (optional)
///
///  @returns OAIFlushExpiredInboxesResult*
///
-(NSURLSessionTask*) flushExpiredWithBefore: (NSDate*) before
    completionHandler: (void (^)(OAIFlushExpiredInboxesResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/expired"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIFlushExpiredInboxesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFlushExpiredInboxesResult*)data, error);
                                }
                            }];
}

///
/// List All Inboxes Paginated
/// List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param favourite Optionally filter results for favourites only (optional, default to @(NO))
///
///  @param search Optionally filter by search words partial matching ID, tags, name, and email address (optional)
///
///  @param tag Optionally filter by tags. Will return inboxes that include given tags (optional)
///
///  @param dEPRECATEDOptionallyFilterByTeamAccess  (optional)
///
///  @param since Optional filter by created after given date time (optional)
///
///  @param before Optional filter by created before given date time (optional)
///
///  @returns OAIPageInboxProjection*
///
-(NSURLSessionTask*) getAllInboxesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    favourite: (NSNumber*) favourite
    search: (NSString*) search
    tag: (NSString*) tag
    dEPRECATEDOptionallyFilterByTeamAccess: (NSNumber*) dEPRECATEDOptionallyFilterByTeamAccess
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageInboxProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (dEPRECATEDOptionallyFilterByTeamAccess != nil) {
        queryParams[@"DEPRECATED. Optionally filter by team access."] = [dEPRECATEDOptionallyFilterByTeamAccess isEqual:@(YES)] ? @"true" : @"false";
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageInboxProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageInboxProjection*)data, error);
                                }
                            }];
}

///
/// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
/// List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
///  @param idOfInboxThatEmailsBelongsTo  
///
///  @param aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit  (optional)
///
///  @param limit Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller (optional)
///
///  @param sortTheResultsByReceivedDateAndDirectionASCOrDESC  (optional)
///
///  @param retryTimeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
///
///  @param delayTimeout  (optional)
///
///  @param minCount Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
///
///  @param unreadOnly  (optional)
///
///  @param excludeEmailsReceivedAfterThisISO8601DateTime  (optional)
///
///  @param excludeEmailsReceivedBeforeThisISO8601DateTime  (optional)
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) getEmailsWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
    aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit: (NSNumber*) aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit
    limit: (NSNumber*) limit
    sortTheResultsByReceivedDateAndDirectionASCOrDESC: (NSString*) sortTheResultsByReceivedDateAndDirectionASCOrDESC
    retryTimeout: (NSNumber*) retryTimeout
    delayTimeout: (NSNumber*) delayTimeout
    minCount: (NSNumber*) minCount
    unreadOnly: (NSNumber*) unreadOnly
    excludeEmailsReceivedAfterThisISO8601DateTime: (NSDate*) excludeEmailsReceivedAfterThisISO8601DateTime
    excludeEmailsReceivedBeforeThisISO8601DateTime: (NSDate*) excludeEmailsReceivedBeforeThisISO8601DateTime
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'idOfInboxThatEmailsBelongsTo' is set
    if (idOfInboxThatEmailsBelongsTo == nil) {
        NSParameterAssert(idOfInboxThatEmailsBelongsTo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"idOfInboxThatEmailsBelongsTo"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idOfInboxThatEmailsBelongsTo != nil) {
        pathParams[@"Id of inbox that emails belongs to"] = idOfInboxThatEmailsBelongsTo;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit != nil) {
        queryParams[@"Alias for limit. Assessed first before assessing any passed limit."] = aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (sortTheResultsByReceivedDateAndDirectionASCOrDESC != nil) {
        queryParams[@"Sort the results by received date and direction ASC or DESC"] = sortTheResultsByReceivedDateAndDirectionASCOrDESC;
    }
    if (retryTimeout != nil) {
        queryParams[@"retryTimeout"] = retryTimeout;
    }
    if (delayTimeout != nil) {
        queryParams[@"delayTimeout"] = delayTimeout;
    }
    if (minCount != nil) {
        queryParams[@"minCount"] = minCount;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (excludeEmailsReceivedAfterThisISO8601DateTime != nil) {
        queryParams[@"Exclude emails received after this ISO 8601 date time"] = excludeEmailsReceivedAfterThisISO8601DateTime;
    }
    if (excludeEmailsReceivedBeforeThisISO8601DateTime != nil) {
        queryParams[@"Exclude emails received before this ISO 8601 date time"] = excludeEmailsReceivedBeforeThisISO8601DateTime;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmailPreview>*)data, error);
                                }
                            }];
}

///
/// Get Inbox. Returns properties of an inbox.
/// Returns an inbox's properties, including its email address and ID.
///  @param inboxId  
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) getInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Get total inbox count
/// 
///  @returns OAICountDto*
///
-(NSURLSessionTask*) getInboxCountWithCompletionHandler: 
    (void (^)(OAICountDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountDto*)data, error);
                                }
                            }];
}

///
/// Get email count in inbox
/// 
///  @param idOfInboxThatEmailsBelongsTo  
///
///  @returns OAICountDto*
///
-(NSURLSessionTask*) getInboxEmailCountWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
    completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler {
    // verify the required parameter 'idOfInboxThatEmailsBelongsTo' is set
    if (idOfInboxThatEmailsBelongsTo == nil) {
        NSParameterAssert(idOfInboxThatEmailsBelongsTo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"idOfInboxThatEmailsBelongsTo"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/emails/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idOfInboxThatEmailsBelongsTo != nil) {
        pathParams[@"Id of inbox that emails belongs to"] = idOfInboxThatEmailsBelongsTo;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountDto*)data, error);
                                }
                            }];
}

///
/// Get inbox emails paginated
/// Get a paginated list of emails in an inbox. Does not hold connections open.
///  @param idOfInboxThatEmailsBelongsTo  
///
///  @param page Optional page index in inbox emails list pagination (optional, default to @0)
///
///  @param size Optional page size in inbox emails list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param since Optional filter by received after given date time (optional)
///
///  @param before Optional filter by received before given date time (optional)
///
///  @returns OAIPageEmailPreview*
///
-(NSURLSessionTask*) getInboxEmailsPaginatedWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageEmailPreview* output, NSError* error)) handler {
    // verify the required parameter 'idOfInboxThatEmailsBelongsTo' is set
    if (idOfInboxThatEmailsBelongsTo == nil) {
        NSParameterAssert(idOfInboxThatEmailsBelongsTo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"idOfInboxThatEmailsBelongsTo"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/emails/paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idOfInboxThatEmailsBelongsTo != nil) {
        pathParams[@"Id of inbox that emails belongs to"] = idOfInboxThatEmailsBelongsTo;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageEmailPreview*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailPreview*)data, error);
                                }
                            }];
}

///
/// Get Inbox Sent Emails
/// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
///  @param inboxId  
///
///  @param page Optional page index in inbox sent email list pagination (optional, default to @0)
///
///  @param optionalPageSizeInInboxSentEmailListPagination  (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional sent email search (optional)
///
///  @param since Optional filter by sent after given date time (optional)
///
///  @param before Optional filter by sent before given date time (optional)
///
///  @returns OAIPageSentEmailProjection*
///
-(NSURLSessionTask*) getInboxSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    optionalPageSizeInInboxSentEmailListPagination: (NSNumber*) optionalPageSizeInInboxSentEmailListPagination
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/sent"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (optionalPageSizeInInboxSentEmailListPagination != nil) {
        queryParams[@"Optional page size in inbox sent email list pagination"] = optionalPageSizeInInboxSentEmailListPagination;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageSentEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageSentEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get inbox tags
/// Get all inbox tags
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) getInboxTagsWithCompletionHandler: 
    (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/tags"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                            }];
}

///
/// List Inboxes and email addresses
/// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
///  @param size Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. (optional, default to @100)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param since Optional filter by created after given date time (optional)
///
///  @param before Optional filter by created before given date time (optional)
///
///  @returns NSArray<OAIInboxDto>*
///
-(NSURLSessionTask*) getInboxesWithSize: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(NSArray<OAIInboxDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInboxDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInboxDto>*)data, error);
                                }
                            }];
}

///
/// List Organization Inboxes Paginated
/// List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Optional filter by created after given date time (optional)
///
///  @param before Optional filter by created before given date time (optional)
///
///  @returns OAIPageOrganizationInboxProjection*
///
-(NSURLSessionTask*) getOrganizationInboxesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageOrganizationInboxProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/organization"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageOrganizationInboxProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageOrganizationInboxProjection*)data, error);
                                }
                            }];
}

///
/// List inbox rulesets
/// List all rulesets attached to an inbox
///  @param inboxId  
///
///  @param page Optional page index in inbox ruleset list pagination (optional, default to @0)
///
///  @param size Optional page size in inbox ruleset list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Optional filter by created after given date time (optional)
///
///  @param before Optional filter by created before given date time (optional)
///
///  @returns OAIPageInboxRulesetDto*
///
-(NSURLSessionTask*) listInboxRulesetsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageInboxRulesetDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageInboxRulesetDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageInboxRulesetDto*)data, error);
                                }
                            }];
}

///
/// List inbox tracking pixels
/// List all tracking pixels sent from an inbox
///  @param inboxId  
///
///  @param page Optional page index in inbox tracking pixel list pagination (optional, default to @0)
///
///  @param optionalPageSizeInInboxTrackingPixelListPagination  (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Optional filter by created after given date time (optional)
///
///  @param before Optional filter by created before given date time (optional)
///
///  @returns OAIPageTrackingPixelProjection*
///
-(NSURLSessionTask*) listInboxTrackingPixelsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    optionalPageSizeInInboxTrackingPixelListPagination: (NSNumber*) optionalPageSizeInInboxTrackingPixelListPagination
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/tracking-pixels"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (optionalPageSizeInInboxTrackingPixelListPagination != nil) {
        queryParams[@"Optional page size in inbox tracking pixel list pagination"] = optionalPageSizeInInboxTrackingPixelListPagination;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIPageTrackingPixelProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageTrackingPixelProjection*)data, error);
                                }
                            }];
}

///
/// Send Email
/// Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
///  @param iDOfTheInboxYouWantToSendTheEmailFrom  
///
///  @param sendEmailOptions  
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailWithIDOfTheInboxYouWantToSendTheEmailFrom: (NSString*) iDOfTheInboxYouWantToSendTheEmailFrom
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'iDOfTheInboxYouWantToSendTheEmailFrom' is set
    if (iDOfTheInboxYouWantToSendTheEmailFrom == nil) {
        NSParameterAssert(iDOfTheInboxYouWantToSendTheEmailFrom);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"iDOfTheInboxYouWantToSendTheEmailFrom"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'sendEmailOptions' is set
    if (sendEmailOptions == nil) {
        NSParameterAssert(sendEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (iDOfTheInboxYouWantToSendTheEmailFrom != nil) {
        pathParams[@"ID of the inbox you want to send the email from"] = iDOfTheInboxYouWantToSendTheEmailFrom;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendEmailOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Send email and return sent confirmation
/// Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
///  @param iDOfTheInboxYouWantToSendTheEmailFrom  
///
///  @param sendEmailOptions  
///
///  @returns OAISentEmailDto*
///
-(NSURLSessionTask*) sendEmailAndConfirmWithIDOfTheInboxYouWantToSendTheEmailFrom: (NSString*) iDOfTheInboxYouWantToSendTheEmailFrom
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler {
    // verify the required parameter 'iDOfTheInboxYouWantToSendTheEmailFrom' is set
    if (iDOfTheInboxYouWantToSendTheEmailFrom == nil) {
        NSParameterAssert(iDOfTheInboxYouWantToSendTheEmailFrom);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"iDOfTheInboxYouWantToSendTheEmailFrom"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendEmailOptions' is set
    if (sendEmailOptions == nil) {
        NSParameterAssert(sendEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/confirm"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (iDOfTheInboxYouWantToSendTheEmailFrom != nil) {
        pathParams[@"ID of the inbox you want to send the email from"] = iDOfTheInboxYouWantToSendTheEmailFrom;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendEmailOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISentEmailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISentEmailDto*)data, error);
                                }
                            }];
}

///
/// Send a test email to inbox
/// Send an inbox a test email to test email receiving is working
///  @param inboxId  
///
///  @returns void
///
-(NSURLSessionTask*) sendTestEmailWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/send-test-email"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Set inbox favourited state
/// Set and return new favourite state for an inbox
///  @param inboxId  
///
///  @param setInboxFavouritedOptions  
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) setInboxFavouritedWithInboxId: (NSString*) inboxId
    setInboxFavouritedOptions: (OAISetInboxFavouritedOptions*) setInboxFavouritedOptions
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'setInboxFavouritedOptions' is set
    if (setInboxFavouritedOptions == nil) {
        NSParameterAssert(setInboxFavouritedOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"setInboxFavouritedOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/favourite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = setInboxFavouritedOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Update Inbox. Change name and description. Email address is not editable.
/// Update editable fields on an inbox
///  @param inboxId  
///
///  @param updateInboxOptions  
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) updateInboxWithInboxId: (NSString*) inboxId
    updateInboxOptions: (OAIUpdateInboxOptions*) updateInboxOptions
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateInboxOptions' is set
    if (updateInboxOptions == nil) {
        NSParameterAssert(updateInboxOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateInboxOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = updateInboxOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}



@end
