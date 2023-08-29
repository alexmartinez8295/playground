public class ParserXmlBG {
    
    public static void testParser(){
        String stringXml = '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:wsa="http://www.w3.org/2005/08/addressing">'+
            '<env:Header>'+
            '<wsa:Action>http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/applicationModule/PersonService/createPersonResponse</wsa:Action>'+
            '<wsa:MessageID>urn:uuid:cc2959f4-fe5d-479c-97e4-b80c224c1a53</wsa:MessageID>'+
            '</env:Header>'+
            '<env:Body>'+
            '<ns0:createPersonResponse xmlns:ns0="http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/applicationModule/types/">'+
            '<ns1:result xsi:type="ns2:PersonResult" xmlns:ns5="http://xmlns.oracle.com/apps/cdm/foundation/parties/contactPointService/" xmlns:ns8="http://xmlns.oracle.com/apps/cdm/foundation/parties/relationshipService/" xmlns:ns2="http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/" xmlns:tns="http://xmlns.oracle.com/adf/svc/errors/" xmlns:ns0="http://xmlns.oracle.com/adf/svc/types/" xmlns:ns3="http://xmlns.oracle.com/apps/cdm/foundation/parties/partyService/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/applicationModule/types/">'+
            '<ns2:Value>'+
            '<ns2:PartyId>300000014590592</ns2:PartyId>'+
            '<ns2:PartyNumber>104004</ns2:PartyNumber>'+
            '<ns2:PartyName>Daniel Test_170822_2</ns2:PartyName>'+
            '<ns2:PartyType>PERSON</ns2:PartyType>'+
            '<ns2:ValidatedFlag xsi:nil="true"/>'+
            '<ns2:LastUpdatedBy>INTERFACES</ns2:LastUpdatedBy>'+
            '<ns2:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns2:LastUpdateLogin>'+
            '<ns2:CreationDate>2022-08-22T16:36:44Z</ns2:CreationDate>'+
            '<ns2:RequestId xsi:nil="true"/>'+
            '<ns2:LastUpdateDate>2022-08-22T16:37:06.286Z</ns2:LastUpdateDate>'+
            '<ns2:CreatedBy>INTERFACES</ns2:CreatedBy>'+
            '<ns2:OrigSystemReference>300000014590592</ns2:OrigSystemReference>'+
            '<ns2:SICCode xsi:nil="true"/>'+
            '<ns2:JgzzFiscalCode xsi:nil="true"/>'+
            '<ns2:PersonFirstName>Daniel</ns2:PersonFirstName>'+
            '<ns2:PersonPreNameAdjunct xsi:nil="true"/>'+
            '<ns2:PersonLastName>Test_170822_2</ns2:PersonLastName>'+
            '<ns2:PersonMiddleName xsi:nil="true"/>'+
            '<ns2:PersonTitle xsi:nil="true"/>'+
            '<ns2:PersonNameSuffix xsi:nil="true"/>'+
            '<ns2:PersonPreviousLastName xsi:nil="true"/>'+
            '<ns2:PersonAcademicTitle xsi:nil="true"/>'+
            '<ns2:Country xsi:nil="true"/>'+
            '<ns2:Address2 xsi:nil="true"/>'+
            '<ns2:Address1 xsi:nil="true"/>'+
            '<ns2:Address4 xsi:nil="true"/>'+
            '<ns2:Address3 xsi:nil="true"/>'+
            '<ns2:PostalCode xsi:nil="true"/>'+
            '<ns2:City xsi:nil="true"/>'+
            '<ns2:Province xsi:nil="true"/>'+
            '<ns2:State xsi:nil="true"/>'+
            '<ns2:County xsi:nil="true"/>'+
            '<ns2:Status>A</ns2:Status>'+
            '<ns2:URL xsi:nil="true"/>'+
            '<ns2:SICCodeType xsi:nil="true"/>'+
            '<ns2:EmailAddress>daniel.test@dot-ti.com</ns2:EmailAddress>'+
            '<ns2:GSAIndicatorFlag xsi:nil="true"/>'+
            '<ns2:LanguageName xsi:nil="true"/>'+
            '<ns2:MissionStatement xsi:nil="true"/>'+
            '<ns2:CategoryCode xsi:nil="true"/>'+
            '<ns2:ThirdPartyFlag xsi:nil="true"/>'+
            '<ns2:Salutation xsi:nil="true"/>'+
            '<ns2:CreatedByModule>TCA_FORM_WRAPPER</ns2:CreatedByModule>'+
            '<ns2:CertReasonCode xsi:nil="true"/>'+
            '<ns2:CertificationLevel xsi:nil="true"/>'+
            '<ns2:PrimaryPhonePurpose>BUSINESS</ns2:PrimaryPhonePurpose>'+
            '<ns2:PrimaryPhoneContactPTId>300000014590598</ns2:PrimaryPhoneContactPTId>'+
            '<ns2:PrimaryPhoneCountryCode xsi:nil="true"/>'+
            '<ns2:PrimaryPhoneLineType>GEN</ns2:PrimaryPhoneLineType>'+
            '<ns2:PrimaryPhoneNumber>5598476935</ns2:PrimaryPhoneNumber>'+
            '<ns2:PrimaryPhoneAreaCode xsi:nil="true"/>'+
            '<ns2:PreferredContactMethod xsi:nil="true"/>'+
            '<ns2:PrimaryPhoneExtension xsi:nil="true"/>'+
            '<ns2:IdenAddrLocationId xsi:nil="true"/>'+
            '<ns2:PrimaryEmailContactPTId>300000014590599</ns2:PrimaryEmailContactPTId>'+
            '<ns2:IdenAddrPartySiteId xsi:nil="true"/>'+
            '<ns2:PersonLastNamePrefix xsi:nil="true"/>'+
            '<ns2:PrimaryURLContactPTId xsi:nil="true"/>'+
            '<ns2:PreferredName xsi:nil="true"/>'+
            '<ns2:PersonSecondLastName xsi:nil="true"/>'+
            '<ns2:PreferredNameId xsi:nil="true"/>'+
            '<ns2:PreferredContactPersonId xsi:nil="true"/>'+
            '<ns2:InternalFlag>false</ns2:InternalFlag>'+
            '<ns2:PreferredFunctionalCurrency xsi:nil="true"/>'+
            '<ns2:Gender xsi:nil="true"/>'+
            '<ns2:MaritalStatus xsi:nil="true"/>'+
            '<ns2:Comments xsi:nil="true"/>'+
            '<ns2:DateOfBirth xsi:nil="true"/>'+
            '<ns2:UserGUID xsi:nil="true"/>'+
            '<ns2:PartyUniqueName>Daniel Test_170822_2</ns2:PartyUniqueName>'+
            '<ns2:SourceSystem xsi:nil="true"/>'+
            '<ns2:SourceSystemReferenceValue xsi:nil="true"/>'+
            '<ns2:SourceSystemUpdateDate xsi:nil="true"/>'+
            '<ns2:PersonProfile xmlns:ns1="http://xmlns.oracle.com/apps/cdm/foundation/parties/flex/person/">'+
            '<ns2:PersonProfileId>300000014590592</ns2:PersonProfileId>'+
            '<ns2:PartyId>300000014590592</ns2:PartyId>'+
            '<ns2:PersonName>Daniel Test_170822_2</ns2:PersonName>'+
            '<ns2:LastUpdateDate>2022-08-22T16:37:06.383Z</ns2:LastUpdateDate>'+
            '<ns2:LastUpdatedBy>INTERFACES</ns2:LastUpdatedBy>'+
            '<ns2:CreationDate>2022-08-22T16:36:45.387Z</ns2:CreationDate>'+
            '<ns2:CreatedBy>INTERFACES</ns2:CreatedBy>'+
            '<ns2:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns2:LastUpdateLogin>'+
            '<ns2:RequestId xsi:nil="true"/>'+
            '<ns2:PersonPreNameAdjunct xsi:nil="true"/>'+
            '<ns2:PersonFirstName>Daniel</ns2:PersonFirstName>'+
            '<ns2:PersonMiddleName xsi:nil="true"/>'+
            '<ns2:PersonLastName>Test_170822_2</ns2:PersonLastName>'+
            '<ns2:PersonNameSuffix xsi:nil="true"/>'+
            '<ns2:PersonTitle xsi:nil="true"/>'+
            '<ns2:PersonAcademicTitle xsi:nil="true"/>'+
            '<ns2:PersonPreviousLastName xsi:nil="true"/>'+
            '<ns2:PersonInitials xsi:nil="true"/>'+
            '<ns2:JgzzFiscalCode xsi:nil="true"/>'+
            '<ns2:DateOfBirth xsi:nil="true"/>'+
            '<ns2:PlaceOfBirth xsi:nil="true"/>'+
            '<ns2:DateOfDeath xsi:nil="true"/>'+
            '<ns2:Gender xsi:nil="true"/>'+
            '<ns2:DeclaredEthnicity xsi:nil="true"/>'+
            '<ns2:MaritalStatus xsi:nil="true"/>'+
            '<ns2:MaritalStatusEffectiveDate xsi:nil="true"/>'+
            '<ns2:PersonalIncomeAmount xsi:nil="true"/>'+
            '<ns2:RentOwnInd xsi:nil="true"/>'+
            '<ns2:LastKnownGPS xsi:nil="true"/>'+
            '<ns2:EffectiveStartDate>2022-08-22</ns2:EffectiveStartDate>'+
            '<ns2:EffectiveEndDate>4712-12-31</ns2:EffectiveEndDate>'+
            '<ns2:InternalFlag>false</ns2:InternalFlag>'+
            '<ns2:Status>A</ns2:Status>'+
            '<ns2:CreatedByModule>TCA_FORM_WRAPPER</ns2:CreatedByModule>'+
            '<ns2:DeceasedFlag>false</ns2:DeceasedFlag>'+
            '<ns2:Comments xsi:nil="true"/>'+
            '<ns2:PersonLastNamePrefix xsi:nil="true"/>'+
            '<ns2:PersonSecondLastName xsi:nil="true"/>'+
            '<ns2:PreferredFunctionalCurrency xsi:nil="true"/>'+
            '<ns2:OrigSystem xsi:nil="true"/>'+
            '<ns2:OrigSystemReference>300000014590592</ns2:OrigSystemReference>'+
            '<ns2:EffectiveSequence>1</ns2:EffectiveSequence>'+
            '<ns2:HeadOfHouseholdFlag xsi:nil="true"/>'+
            '<ns2:HouseholdIncomeAmount xsi:nil="true"/>'+
            '<ns2:HouseholdSize xsi:nil="true"/>'+
            '<ns2:EffectiveLatestChange>Y</ns2:EffectiveLatestChange>'+
            '<ns2:SuffixOverriddenFlag>false</ns2:SuffixOverriddenFlag>'+
            '<ns2:UniqueNameSuffix xsi:nil="true"/>'+
            '<ns2:CorpCurrencyCode>USD</ns2:CorpCurrencyCode>'+
            '<ns2:CurcyConvRateType>Corporate</ns2:CurcyConvRateType>'+
            '<ns2:CurrencyCode>USD</ns2:CurrencyCode>'+
            '<ns2:PartyNumber>104004</ns2:PartyNumber>'+
            '<ns2:Salutation xsi:nil="true"/>'+
            '<ns2:CertReasonCode xsi:nil="true"/>'+
            '<ns2:CertificationLevel xsi:nil="true"/>'+
            '<ns2:PreferredContactMethod xsi:nil="true"/>'+
            '<ns2:PreferredContactPersonId xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLine1 xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLine2 xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLine3 xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLine4 xsi:nil="true"/>'+
            '<ns2:Alias xsi:nil="true"/>'+
            '<ns2:PrimaryAddressCity xsi:nil="true"/>'+
            '<ns2:PrimaryAddressCountry xsi:nil="true"/>'+
            '<ns2:PrimaryAddressCounty xsi:nil="true"/>'+
            '<ns2:PrimaryEmailAddress>daniel.test@dot-ti.com</ns2:PrimaryEmailAddress>'+
            '<ns2:PrimaryFormattedAddress xsi:nil="true"/>'+
            '<ns2:PrimaryFormattedPhoneNumber>5598476935</ns2:PrimaryFormattedPhoneNumber>'+
            '<ns2:PrimaryLanguage xsi:nil="true"/>'+
            '<ns2:PartyUniqueName>Daniel Test_170822_2</ns2:PartyUniqueName>'+
            '<ns2:PrimaryAddressPostalCode xsi:nil="true"/>'+
            '<ns2:PreferredContactEmail xsi:nil="true"/>'+
            '<ns2:PreferredContactName xsi:nil="true"/>'+
            '<ns2:PreferredContactPhone xsi:nil="true"/>'+
            '<ns2:PreferredContactURL xsi:nil="true"/>'+
            '<ns2:PreferredName xsi:nil="true"/>'+
            '<ns2:PreferredNameId xsi:nil="true"/>'+
            '<ns2:PrimaryEmailId>300000014590599</ns2:PrimaryEmailId>'+
            '<ns2:PrimaryPhoneAreaCode xsi:nil="true"/>'+
            '<ns2:PrimaryPhoneId>300000014590598</ns2:PrimaryPhoneId>'+
            '<ns2:PrimaryPhoneCountryCode xsi:nil="true"/>'+
            '<ns2:PrimaryPhoneExtension xsi:nil="true"/>'+
            '<ns2:PrimaryPhoneLineType>GEN</ns2:PrimaryPhoneLineType>'+
            '<ns2:PrimaryPhoneNumber>5598476935</ns2:PrimaryPhoneNumber>'+
            '<ns2:PrimaryPhonePurpose>BUSINESS</ns2:PrimaryPhonePurpose>'+
            '<ns2:PrimaryWebId xsi:nil="true"/>'+
            '<ns2:Pronunciation xsi:nil="true"/>'+
            '<ns2:PrimaryAddressProvince xsi:nil="true"/>'+
            '<ns2:PrimaryAddressState xsi:nil="true"/>'+
            '<ns2:PrimaryURL xsi:nil="true"/>'+
            '<ns2:ValidatedFlag xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLatitude xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLongitude xsi:nil="true"/>'+
            '<ns2:PrimaryAddressLocationId/>'+
            '<ns2:FavoriteContactFlag>false</ns2:FavoriteContactFlag>'+
            '<ns2:Distance xsi:nil="true"/>'+
            '<ns2:SalesAffinityCode xsi:nil="true"/>'+
            '<ns2:SalesBuyingRoleCode xsi:nil="true"/>'+
            '<ns2:DepartmentCode xsi:nil="true"/>'+
            '<ns2:Department xsi:nil="true"/>'+
            '<ns2:JobTitleCode xsi:nil="true"/>'+
            '<ns2:JobTitle xsi:nil="true"/>'+
            '<ns2:DoNotCallFlag>false</ns2:DoNotCallFlag>'+
            '<ns2:DoNotContactFlag>false</ns2:DoNotContactFlag>'+
            '<ns2:DoNotEmailFlag>false</ns2:DoNotEmailFlag>'+
            '<ns2:DoNotMailFlag>false</ns2:DoNotMailFlag>'+
            '<ns2:LastContactDate xsi:nil="true"/>'+
            '<ns2:PrimaryCustomerId>100000000847471</ns2:PrimaryCustomerId>'+
            '<ns2:PrimaryCustomerRelationshipId>300000014590594</ns2:PrimaryCustomerRelationshipId>'+
            '<ns2:PrimaryCustomerName>GEORGINA  ARACELI FLORES LOPEZ</ns2:PrimaryCustomerName>'+
            '<ns2:LastSourceUpdateDate>2022-08-22T16:37:06Z</ns2:LastSourceUpdateDate>'+
            '<ns2:LastUpdateSourceSystem>UNKNOWN</ns2:LastUpdateSourceSystem>'+
            '<ns2:DataCloudStatus xsi:nil="true"/>'+
            '<ns2:LastEnrichmentDate xsi:nil="true"/>'+
            '</ns2:PersonProfile>'+
            '<ns2:Relationship xmlns:ns10="http://xmlns.oracle.com/apps/cdm/foundation/parties/flex/relationship/">'+
            '<ns8:RelationshipRecId>300000014590593</ns8:RelationshipRecId>'+
            '<ns8:RelationshipId>300000014590594</ns8:RelationshipId>'+
            '<ns8:SubjectId>300000014590592</ns8:SubjectId>'+
            '<ns8:SubjectType>PERSON</ns8:SubjectType>'+
            '<ns8:SubjectTableName>HZ_PARTIES</ns8:SubjectTableName>'+
            '<ns8:ObjectId>100000000847471</ns8:ObjectId>'+
            '<ns8:ObjectType>ORGANIZATION</ns8:ObjectType>'+
            '<ns8:ObjectTableName>HZ_PARTIES</ns8:ObjectTableName>'+
            '<ns8:RelationshipCode>CONTACT_OF</ns8:RelationshipCode>'+
            '<ns8:RelationshipType>CONTACT</ns8:RelationshipType>'+
            '<ns8:Role>CONTACTORG</ns8:Role>'+
            '<ns8:Comments xsi:nil="true"/>'+
            '<ns8:StartDate>2018-01-01</ns8:StartDate>'+
            '<ns8:EndDate>4712-12-31</ns8:EndDate>'+
            '<ns8:Status>A</ns8:Status>'+
            '<ns8:CreatedBy>INTERFACES</ns8:CreatedBy>'+
            '<ns8:CreationDate>2022-08-22T16:36:48.129Z</ns8:CreationDate>'+
            '<ns8:LastUpdatedBy>INTERFACES</ns8:LastUpdatedBy>'+
            '<ns8:LastUpdateDate>2022-08-22T16:37:05.469Z</ns8:LastUpdateDate>'+
            '<ns8:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns8:LastUpdateLogin>'+
            '<ns8:RequestId xsi:nil="true"/>'+
            '<ns8:ObjectVersionNumber>1</ns8:ObjectVersionNumber>'+
            '<ns8:CreatedByModule>TCA_FORM_WRAPPER</ns8:CreatedByModule>'+
            '<ns8:AdditionalInformation1 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation2 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation3 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation4 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation5 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation6 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation7 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation8 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation9 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation10 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation11 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation12 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation13 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation14 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation15 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation16 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation17 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation18 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation19 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation20 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation21 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation22 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation23 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation24 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation25 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation26 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation27 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation28 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation29 xsi:nil="true"/>'+
            '<ns8:AdditionalInformation30 xsi:nil="true"/>'+
            '<ns8:DirectionCode>P</ns8:DirectionCode>'+
            '<ns8:PercentageOwnership xsi:nil="true"/>'+
            '<ns8:ObjectUsageCode xsi:nil="true"/>'+
            '<ns8:SubjectUsageCode xsi:nil="true"/>'+
            '<ns8:PreferredContactFlag>false</ns8:PreferredContactFlag>'+
            '<ns8:ObjectPartyName>GEORGINA  ARACELI FLORES LOPEZ</ns8:ObjectPartyName>'+
            '<ns8:PartyName>GEORGINA  ARACELI FLORES LOPEZ</ns8:PartyName>'+
            '<ns8:CurrencyCode>USD</ns8:CurrencyCode>'+
            '<ns8:CurcyConvRateType>Corporate</ns8:CurcyConvRateType>'+
            '<ns8:CorpCurrencyCode>USD</ns8:CorpCurrencyCode>'+
            '<ns8:PrimaryCustomerFlag>true</ns8:PrimaryCustomerFlag>'+
            '<ns8:SubjectEmailAddress>daniel.test@dot-ti.com</ns8:SubjectEmailAddress>'+
            '<ns8:ObjectEmailAddress xsi:nil="true"/>'+
            '<ns8:OrganizationContact xmlns:ns9="http://xmlns.oracle.com/apps/cdm/foundation/parties/flex/orgContact/">'+
            '<ns8:OrgContactId>300000014590596</ns8:OrgContactId>'+
            '<ns8:PartyRelationshipId>300000014590594</ns8:PartyRelationshipId>'+
            '<ns8:ContactPartyId>300000014590592</ns8:ContactPartyId>'+
            '<ns8:PersonFirstName>Daniel</ns8:PersonFirstName>'+
            '<ns8:PersonLastName>Test_170822_2</ns8:PersonLastName>'+
            '<ns8:ContactName>Daniel Test_170822_2</ns8:ContactName>'+
            '<ns8:PersonPreNameAdjunct xsi:nil="true"/>'+
            '<ns8:PersonMiddleName xsi:nil="true"/>'+
            '<ns8:PersonNameSuffix xsi:nil="true"/>'+
            '<ns8:PersonPreviousLastName xsi:nil="true"/>'+
            '<ns8:PersonAcademicTitle xsi:nil="true"/>'+
            '<ns8:Salutation xsi:nil="true"/>'+
            '<ns8:PersonLastNamePrefix xsi:nil="true"/>'+
            '<ns8:PreferredName xsi:nil="true"/>'+
            '<ns8:PersonSecondLastName xsi:nil="true"/>'+
            '<ns8:PersonLanguageName xsi:nil="true"/>'+
            '<ns8:PersonTitle xsi:nil="true"/>'+
            '<ns8:PersonCertificationLevel xsi:nil="true"/>'+
            '<ns8:PersonCertReasonCode xsi:nil="true"/>'+
            '<ns8:CustomerPartyId>100000000847471</ns8:CustomerPartyId>'+
            '<ns8:CustomerUniqueName>GEORGINA  ARACELI FLORES LOPEZ</ns8:CustomerUniqueName>'+
            '<ns8:CustomerName>GEORGINA  ARACELI FLORES LOPEZ</ns8:CustomerName>'+
            '<ns8:CustomerPartyNumber>6383</ns8:CustomerPartyNumber>'+
            '<ns8:FormattedPhoneNumber xsi:nil="true"/>'+
            '<ns8:EmailAddress>daniel.test@dot-ti.com</ns8:EmailAddress>'+
            '<ns8:WebUrl/>'+
            '<ns8:Comments xsi:nil="true"/>'+
            '<ns8:ContactNumber>3</ns8:ContactNumber>'+
            '<ns8:DepartmentCode xsi:nil="true"/>'+
            '<ns8:Department xsi:nil="true"/>'+
            '<ns8:JobTitle xsi:nil="true"/>'+
            '<ns8:DecisionMakerFlag>false</ns8:DecisionMakerFlag>'+
            '<ns8:JobTitleCode xsi:nil="true"/>'+
            '<ns8:ReferenceUseFlag>false</ns8:ReferenceUseFlag>'+
            '<ns8:Rank xsi:nil="true"/>'+
            '<ns8:LastUpdateDate>2022-08-22T16:37:04.502Z</ns8:LastUpdateDate>'+
            '<ns8:LastUpdatedBy>INTERFACES</ns8:LastUpdatedBy>'+
            '<ns8:CreationDate>2022-08-22T16:36:49.552Z</ns8:CreationDate>'+
            '<ns8:CreatedBy>INTERFACES</ns8:CreatedBy>'+
            '<ns8:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns8:LastUpdateLogin>'+
            '<ns8:RequestId xsi:nil="true"/>'+
            '<ns8:PartySiteId xsi:nil="true"/>'+
            '<ns8:OrigSystemReference>300000014590596</ns8:OrigSystemReference>'+
            '<ns8:CreatedByModule>TCA_FORM_WRAPPER</ns8:CreatedByModule>'+
            '<ns8:ObjectVersionNumber>1</ns8:ObjectVersionNumber>'+
            '<ns8:PartySiteName xsi:nil="true"/>'+
            '<ns8:SalesAffinityCode xsi:nil="true"/>'+
            '<ns8:SalesAffinityComments xsi:nil="true"/>'+
            '<ns8:SalesBuyingRoleCode xsi:nil="true"/>'+
            '<ns8:SalesInfluenceLevelCode xsi:nil="true"/>'+
            '<ns8:FormattedAddress xsi:nil="true"/>'+
            '<ns8:PreferredContactMethod xsi:nil="true"/>'+
            '<ns8:CurrencyCode>USD</ns8:CurrencyCode>'+
            '<ns8:CurcyConvRateType>Corporate</ns8:CurcyConvRateType>'+
            '<ns8:CorpCurrencyCode>USD</ns8:CorpCurrencyCode>'+
            '<ns8:PreferredContactFlag>false</ns8:PreferredContactFlag>'+
            '<ns8:ContactFormattedAddress xsi:nil="true"/>'+
            '<ns8:ContactFormattedMultilineAddress xsi:nil="true"/>'+
            '<ns8:CustomerEmailAddress xsi:nil="true"/>'+
            '<ns8:PrimaryCustomerFlag>true</ns8:PrimaryCustomerFlag>'+
            '<ns8:OrganizationContactRole>'+
            '<ns8:OrgContactRoleId>300000014590597</ns8:OrgContactRoleId>'+
            '<ns8:OrigSystemReference>300000014590597</ns8:OrigSystemReference>'+
            '<ns8:CreatedBy>INTERFACES</ns8:CreatedBy>'+
            '<ns8:RoleType>CONTACT</ns8:RoleType>'+
            '<ns8:OrgContactId>300000014590596</ns8:OrgContactId>'+
            '<ns8:CreationDate>2022-08-22T16:36:50.455Z</ns8:CreationDate>'+
            '<ns8:RoleLevel xsi:nil="true"/>'+
            '<ns8:PrimaryFlag>true</ns8:PrimaryFlag>'+
            '<ns8:LastUpdateDate>2022-08-22T16:37:04.545Z</ns8:LastUpdateDate>'+
            '<ns8:LastUpdatedBy>INTERFACES</ns8:LastUpdatedBy>'+
            '<ns8:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns8:LastUpdateLogin>'+
            '<ns8:PrimaryContactPerRoleType>N</ns8:PrimaryContactPerRoleType>'+
            '<ns8:RequestId xsi:nil="true"/>'+
            '<ns8:Status>A</ns8:Status>'+
            '<ns8:ObjectVersionNumber>1</ns8:ObjectVersionNumber>'+
            '<ns8:CreatedByModule>TCA_FORM_WRAPPER</ns8:CreatedByModule>'+
            '</ns8:OrganizationContactRole>'+
            '</ns8:OrganizationContact>'+
            '<ns8:Phone xmlns:ns6="http://xmlns.oracle.com/apps/cdm/foundation/parties/flex/contactPoint/">'+
            '<ns5:ContactPointId>300000014590598</ns5:ContactPointId>'+
            '<ns5:ContactPointType>PHONE</ns5:ContactPointType>'+
            '<ns5:Status>A</ns5:Status>'+
            '<ns5:OwnerTableName>HZ_PARTIES</ns5:OwnerTableName>'+
            '<ns5:OwnerTableId>300000014590592</ns5:OwnerTableId>'+
            '<ns5:PrimaryFlag>true</ns5:PrimaryFlag>'+
            '<ns5:OrigSystemReference>300000014590598</ns5:OrigSystemReference>'+
            '<ns5:LastUpdateDate>2022-08-22T16:37:05.766Z</ns5:LastUpdateDate>'+
            '<ns5:LastUpdatedBy>INTERFACES</ns5:LastUpdatedBy>'+
            '<ns5:CreationDate>2022-08-22T16:36:55.935Z</ns5:CreationDate>'+
            '<ns5:CreatedBy>INTERFACES</ns5:CreatedBy>'+
            '<ns5:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns5:LastUpdateLogin>'+
            '<ns5:RequestId xsi:nil="true"/>'+
            '<ns5:ObjectVersionNumber>1</ns5:ObjectVersionNumber>'+
            '<ns5:CreatedByModule>TCA_FORM_WRAPPER</ns5:CreatedByModule>'+
            '<ns5:ContactPointPurpose>BUSINESS</ns5:ContactPointPurpose>'+
            '<ns5:PrimaryByPurpose>N</ns5:PrimaryByPurpose>'+
            '<ns5:StartDate>2020-08-17</ns5:StartDate>'+
            '<ns5:EndDate>4712-12-31</ns5:EndDate>'+
            '<ns5:RelationshipId>300000014590594</ns5:RelationshipId>'+
            '<ns5:PartyUsageCode xsi:nil="true"/>'+
            '<ns5:OrigSystem xsi:nil="true"/>'+
            '<ns5:PhoneCallingCalendar xsi:nil="true"/>'+
            '<ns5:LastContactDtTime xsi:nil="true"/>'+
            '<ns5:PhoneAreaCode xsi:nil="true"/>'+
            '<ns5:PhoneCountryCode xsi:nil="true"/>'+
            '<ns5:PhoneNumber>5598476935</ns5:PhoneNumber>'+
            '<ns5:PhoneExtension xsi:nil="true"/>'+
            '<ns5:PhoneLineType>GEN</ns5:PhoneLineType>'+
            '<ns5:RawPhoneNumber>5598476935</ns5:RawPhoneNumber>'+
            '<ns5:PagerTypeCode xsi:nil="true"/>'+
            '<ns5:FormattedPhoneNumber>5598476935</ns5:FormattedPhoneNumber>'+
            '<ns5:TransposedPhoneNumber>5396748955</ns5:TransposedPhoneNumber>'+
            '<ns5:PartyName>Daniel Test_170822_2</ns5:PartyName>'+
            '<ns5:TimezoneCode xsi:nil="true"/>'+
            '<ns5:OverallPrimaryFlag>true</ns5:OverallPrimaryFlag>'+
            '</ns8:Phone>'+
            '<ns8:Email xmlns:ns6="http://xmlns.oracle.com/apps/cdm/foundation/parties/flex/contactPoint/">'+
            '<ns5:ContactPointId>300000014590599</ns5:ContactPointId>'+
            '<ns5:ContactPointType>EMAIL</ns5:ContactPointType>'+
            '<ns5:Status>A</ns5:Status>'+
            '<ns5:OwnerTableName>HZ_PARTIES</ns5:OwnerTableName>'+
            '<ns5:OwnerTableId>300000014590592</ns5:OwnerTableId>'+
            '<ns5:PrimaryFlag>true</ns5:PrimaryFlag>'+
            '<ns5:OrigSystemReference>300000014590599</ns5:OrigSystemReference>'+
            '<ns5:LastUpdateDate>2022-08-22T16:37:05.851Z</ns5:LastUpdateDate>'+
            '<ns5:LastUpdatedBy>INTERFACES</ns5:LastUpdatedBy>'+
            '<ns5:CreationDate>2022-08-22T16:37:00.671Z</ns5:CreationDate>'+
            '<ns5:CreatedBy>INTERFACES</ns5:CreatedBy>'+
            '<ns5:LastUpdateLogin>E58CECDF18FBB4A6E0530C62500AB859</ns5:LastUpdateLogin>'+
            '<ns5:RequestId xsi:nil="true"/>'+
            '<ns5:ObjectVersionNumber>1</ns5:ObjectVersionNumber>'+
            '<ns5:CreatedByModule>TCA_FORM_WRAPPER</ns5:CreatedByModule>'+
            '<ns5:ContactPointPurpose>BUSINESS</ns5:ContactPointPurpose>'+
            '<ns5:PrimaryByPurpose>N</ns5:PrimaryByPurpose>'+
            '<ns5:StartDate>2018-01-01</ns5:StartDate>'+
            '<ns5:EndDate>4712-12-31</ns5:EndDate>'+
            '<ns5:RelationshipId>300000014590594</ns5:RelationshipId>'+
            '<ns5:PartyUsageCode xsi:nil="true"/>'+
            '<ns5:OrigSystem xsi:nil="true"/>'+
            '<ns5:EmailFormat/>'+
            '<ns5:EmailAddress>daniel.test@dot-ti.com</ns5:EmailAddress>'+
            '<ns5:PartyName>Daniel Test_170822_2</ns5:PartyName>'+
            '<ns5:OverallPrimaryFlag>true</ns5:OverallPrimaryFlag>'+
            '</ns8:Email>'+
            '</ns2:Relationship>'+
            '</ns2:Value>'+
            '</ns1:result>'+
            '</ns0:createPersonResponse>'+
            '</env:Body>'+
            '</env:Envelope>';
        
        DOM.document doc = new DOM.Document();
        
        doc.load(stringXml);
        
        //DOM.Document doc = res_MO.getBodyDocument();
        DOM.XmlNode contacto_CP = doc.getRootElement();
        Dom.XmlNode body_CP = contacto_CP.getChildElement('Body', 'http://schemas.xmlsoap.org/soap/envelope/');
        Dom.XmlNode createPersonResponse = body_CP.getChildElement('createPersonResponse', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/applicationModule/types/');
        Dom.XmlNode result_CP = createPersonResponse.getChildElement('result', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/applicationModule/types/');
        Dom.XmlNode value_CP = result_CP.getChildElement('Value', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
                
        Dom.XmlNode partyIdRes = value_CP.getChildElement('PartyId', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
        String partyId = partyIdRes.getText();
        System.debug('### partyId: ' + partyId);
        
        Dom.XmlNode partyNumberRes = value_CP.getChildElement('PartyNumber', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
        String partyNumber = partyNumberRes.getText();
        System.debug('### partyNumber: ' + partyNumber);
        
        Dom.XmlNode personProfile_CP = value_CP.getChildElement('PersonProfile', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
        Dom.XmlNode personProfileRes = personProfile_CP.getChildElement('PersonProfileId', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
        String personProfileId = personProfileRes.getText();
        System.debug('### personProfileId: ' + personProfileId);
        
        Dom.XmlNode relationship_CP = value_CP.getChildElement('Relationship', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/personService/');
        Dom.XmlNode relationshipRes = relationship_CP.getChildElement('RelationshipId', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/relationshipService/');
        String relationshipId = relationshipRes.getText();
        System.debug('### relationshipId: ' + relationshipId);
        
        Dom.XmlNode subjectIdRes = relationship_CP.getChildElement('SubjectId', 'http://xmlns.oracle.com/apps/cdm/foundation/parties/relationshipService/');
        String subjectId = subjectIdRes.getText();
        System.debug('### subjectId: ' + subjectId);
    }
}