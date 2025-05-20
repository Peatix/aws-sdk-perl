
package Paws::PartnerCentralSelling::UpdateOpportunity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Customer => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Customer');
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has LifeCycle => (is => 'ro', isa => 'Paws::PartnerCentralSelling::LifeCycle');
  has Marketing => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Marketing');
  has NationalSecurity => (is => 'ro', isa => 'Str');
  has OpportunityType => (is => 'ro', isa => 'Str');
  has PartnerOpportunityIdentifier => (is => 'ro', isa => 'Str');
  has PrimaryNeedsFromAws => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Project => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Project');
  has SoftwareRevenue => (is => 'ro', isa => 'Paws::PartnerCentralSelling::SoftwareRevenue');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::UpdateOpportunityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::UpdateOpportunity - Arguments for method UpdateOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method UpdateOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $UpdateOpportunityResponse = $partnercentral -selling->UpdateOpportunity(
      Catalog          => 'MyCatalogIdentifier',
      Identifier       => 'MyOpportunityIdentifier',
      LastModifiedDate => '1970-01-01T01:00:00',
      Customer         => {
        Account => {
          CompanyName => 'MyAccountCompanyNameString',    # max: 120
          Address     => {
            City        => 'MyAddressCityString',         # max: 255; OPTIONAL
            CountryCode => 'US'
            , # values: US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW; OPTIONAL
            PostalCode    => 'MyAddressPostalCodeString',    # max: 20; OPTIONAL
            StateOrRegion => 'MyAddressPart',                # OPTIONAL
            StreetAddress =>
              'MyAddressStreetAddressString',    # max: 255; OPTIONAL
          },    # OPTIONAL
          AwsAccountId => 'MyAwsAccount',                   # OPTIONAL
          Duns         => 'MyDunsNumber',                   # OPTIONAL
          Industry     => 'Aerospace'
          , # values: Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other; OPTIONAL
          OtherIndustry => 'MyAccountOtherIndustryString',  # max: 255; OPTIONAL
          WebsiteUrl    => 'MyWebsiteUrl',    # min: 4, max: 255; OPTIONAL
        },    # OPTIONAL
        Contacts => [
          {
            BusinessTitle => 'MyJobTitle',                  # max: 80; OPTIONAL
            Email         => 'MyEmail',                     # max: 80; OPTIONAL
            FirstName     => 'MyContactFirstNameString',    # max: 80; OPTIONAL
            LastName      => 'MyContactLastNameString',     # max: 80; OPTIONAL
            Phone         => 'MyPhoneNumber',               # max: 40; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      LifeCycle => {
        ClosedLostReason => 'Customer Deficiency'
        , # values: Customer Deficiency, Delay / Cancellation of Project, Legal / Tax / Regulatory, Lost to Competitor - Google, Lost to Competitor - Microsoft, Lost to Competitor - SoftLayer, Lost to Competitor - VMWare, Lost to Competitor - Other, No Opportunity, On Premises Deployment, Partner Gap, Price, Security / Compliance, Technical Limitations, Customer Experience, Other, People/Relationship/Governance, Product/Technology, Financial/Commercial; OPTIONAL
        NextSteps        => 'MyLifeCycleNextStepsString',   # max: 255; OPTIONAL
        NextStepsHistory => [
          {
            Time  => '1970-01-01T01:00:00',
            Value => 'MyString',

          },
          ...
        ],                                                  # max: 50; OPTIONAL
        ReviewComments => 'MyString',
        ReviewStatus   => 'Pending Submission'
        , # values: Pending Submission, Submitted, In review, Approved, Rejected, Action Required; OPTIONAL
        ReviewStatusReason => 'MyString',
        Stage              => 'Prospect'
        , # values: Prospect, Qualified, Technical Validation, Business Validation, Committed, Launched, Closed Lost; OPTIONAL
        TargetCloseDate => 'MyDate',    # OPTIONAL
      },    # OPTIONAL
      Marketing => {
        AwsFundingUsed => 'Yes',        # values: Yes, No; OPTIONAL
        CampaignName   => 'MyString',
        Channels       => [
          'AWS Marketing Central',
          ... # values: AWS Marketing Central, Content Syndication, Display, Email, Live Event, Out Of Home (OOH), Print, Search, Social, Telemarketing, TV, Video, Virtual Event
        ],    # OPTIONAL
        Source =>
          'Marketing Activity',    # values: Marketing Activity, None; OPTIONAL
        UseCases => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      NationalSecurity             => 'Yes',                 # OPTIONAL
      OpportunityType              => 'Net New Business',    # OPTIONAL
      PartnerOpportunityIdentifier =>
        'MyUpdateOpportunityRequestPartnerOpportunityIdentifierString'
      ,                                                      # OPTIONAL
      PrimaryNeedsFromAws => [
        'Co-Sell - Architectural Validation',
        ... # values: Co-Sell - Architectural Validation, Co-Sell - Business Presentation, Co-Sell - Competitive Information, Co-Sell - Pricing Assistance, Co-Sell - Technical Consultation, Co-Sell - Total Cost of Ownership Evaluation, Co-Sell - Deal Support, Co-Sell - Support for Public Tender / RFx
      ],    # OPTIONAL
      Project => {
        AdditionalComments =>
          'MyProjectAdditionalCommentsString',    # min: 1, max: 255; OPTIONAL
        ApnPrograms    => [ 'MyString', ... ],    # OPTIONAL
        CompetitorName => 'Oracle Cloud'
        , # values: Oracle Cloud, On-Prem, Co-location, Akamai, AliCloud, Google Cloud Platform, IBM Softlayer, Microsoft Azure, Other- Cost Optimization, No Competition, *Other; OPTIONAL
        CustomerBusinessProblem => 'MyProjectCustomerBusinessProblemString'
        , # min: 20, max: 2000; OPTIONAL
        CustomerUseCase => 'MyString',
        DeliveryModels  => [
          'SaaS or PaaS',
          ... # values: SaaS or PaaS, BYOL or AMI, Managed Services, Professional Services, Resell, Other
        ],    # OPTIONAL
        ExpectedCustomerSpend => [
          {
            Amount       => 'MyString',
            CurrencyCode => 'USD'
            , # values: USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
            Frequency     => 'Monthly',    # values: Monthly
            TargetCompany =>
              'MyExpectedCustomerSpendTargetCompanyString',    # min: 1, max: 80
            EstimationUrl => 'MyWebsiteUrl',    # min: 4, max: 255; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
        OtherCompetitorNames =>
          'MyProjectOtherCompetitorNamesString',    # max: 255; OPTIONAL
        OtherSolutionDescription =>
          'MyProjectOtherSolutionDescriptionString',    # max: 255; OPTIONAL
        RelatedOpportunityIdentifier => 'MyOpportunityIdentifier',
        SalesActivities              => [
          'Initialized discussions with customer',
          ... # values: Initialized discussions with customer, Customer has shown interest in solution, Conducted POC / Demo, In evaluation / planning stage, Agreed on solution to Business Problem, Completed Action Plan, Finalized Deployment Need, SOW Signed
        ],    # OPTIONAL
        Title => 'MyProjectTitleString',    # max: 255; OPTIONAL
      },    # OPTIONAL
      SoftwareRevenue => {
        DeliveryModel =>
          'Contract',  # values: Contract, Pay-as-you-go, Subscription; OPTIONAL
        EffectiveDate  => 'MyDate',    # OPTIONAL
        ExpirationDate => 'MyDate',    # OPTIONAL
        Value          => {
          Amount       => 'MyMonetaryValueAmountString',
          CurrencyCode => 'USD'
          , # values: USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Id               = $UpdateOpportunityResponse->Id;
    my $LastModifiedDate = $UpdateOpportunityResponse->LastModifiedDate;

   # Returns a L<Paws::PartnerCentralSelling::UpdateOpportunityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/UpdateOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity is updated in. Use C<AWS>
to update real opportunities in the production environment, and
C<Sandbox> for testing in secure, isolated environments. When you use
the C<Sandbox> catalog, it allows you to simulate and validate your
interactions with Amazon Web Services services without affecting live
data or operations.



=head2 Customer => L<Paws::PartnerCentralSelling::Customer>

Specifies details of the customer associated with the C<Opportunity>.



=head2 B<REQUIRED> Identifier => Str

Read-only, system generated C<Opportunity> unique identifier.



=head2 B<REQUIRED> LastModifiedDate => Str

C<DateTime> when the opportunity was last modified.



=head2 LifeCycle => L<Paws::PartnerCentralSelling::LifeCycle>

An object that contains lifecycle details for the C<Opportunity>.



=head2 Marketing => L<Paws::PartnerCentralSelling::Marketing>

An object that contains marketing details for the C<Opportunity>.



=head2 NationalSecurity => Str

Specifies if the opportunity is associated with national security
concerns. This flag is only applicable when the industry is
C<Government>. For national-security-related opportunities, validation
and compliance rules may apply, impacting the opportunity's visibility
and processing.

Valid values are: C<"Yes">, C<"No">

=head2 OpportunityType => Str

Specifies the opportunity type as a renewal, new, or expansion.

Opportunity types:

=over

=item *

New opportunity: Represents a new business opportunity with a potential
customer that's not previously engaged with your solutions or services.

=item *

Renewal opportunity: Represents an opportunity to renew an existing
contract or subscription with a current customer, ensuring continuity
of service.

=item *

Expansion opportunity: Represents an opportunity to expand the scope of
an existing contract or subscription, either by adding new services or
increasing the volume of existing services for a current customer.

=back


Valid values are: C<"Net New Business">, C<"Flat Renewal">, C<"Expansion">

=head2 PartnerOpportunityIdentifier => Str

Specifies the opportunity's unique identifier in the partner's CRM
system. This value is essential to track and reconcile because it's
included in the outbound payload sent back to the partner.



=head2 PrimaryNeedsFromAws => ArrayRef[Str|Undef]

Identifies the type of support the partner needs from Amazon Web
Services.

Valid values:

=over

=item *

CosellE<mdash>Architectural Validation: Confirmation from Amazon Web
Services that the partner's proposed solution architecture is aligned
with Amazon Web Services best practices and poses minimal architectural
risks.

=item *

CosellE<mdash>Business Presentation: Request Amazon Web Services
seller's participation in a joint customer presentation.

=item *

CosellE<mdash>Competitive Information: Access to Amazon Web Services
competitive resources and support for the partner's proposed solution.

=item *

CosellE<mdash>Pricing Assistance: Connect with an AWS seller for
support situations where a partner may be receiving an upfront discount
on a service (for example: EDP deals).

=item *

CosellE<mdash>Technical Consultation: Connection with an Amazon Web
Services Solutions Architect to address the partner's questions about
the proposed solution.

=item *

CosellE<mdash>Total Cost of Ownership Evaluation: Assistance with
quoting different cost savings of proposed solutions on Amazon Web
Services versus on-premises or a traditional hosting environment.

=item *

CosellE<mdash>Deal Support: Request Amazon Web Services seller's
support to progress the opportunity (for example: joint customer call,
strategic positioning).

=item *

CosellE<mdash>Support for Public Tender/RFx: Opportunity related to the
public sector where the partner needs RFx support from Amazon Web
Services.

=back




=head2 Project => L<Paws::PartnerCentralSelling::Project>

An object that contains project details summary for the C<Opportunity>.



=head2 SoftwareRevenue => L<Paws::PartnerCentralSelling::SoftwareRevenue>

Specifies details of a customer's procurement terms. Required only for
partners in eligible programs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

