
package Paws::PartnerCentralSelling::CreateEngagementInvitation;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Invitation => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Invitation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEngagementInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::CreateEngagementInvitationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateEngagementInvitation - Arguments for method CreateEngagementInvitation on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEngagementInvitation on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method CreateEngagementInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEngagementInvitation.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $CreateEngagementInvitationResponse =
      $partnercentral -selling->CreateEngagementInvitation(
      Catalog              => 'MyCatalogIdentifier',
      ClientToken          => 'MyClientToken',
      EngagementIdentifier => 'MyEngagementIdentifier',
      Invitation           => {
        Message => 'MyInvitationMessage',    # min: 1, max: 255
        Payload => {
          OpportunityInvitation => {
            Customer => {
              CompanyName => 'MyCompanyName',         # min: 1, max: 120
              CountryCode => 'US'
              , # values: US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
              Industry => 'Aerospace'
              , # values: Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
              WebsiteUrl => 'MyCompanyWebsiteUrl',    # min: 4, max: 255

            },
            Project => {
              BusinessProblem =>
                'MyEngagementCustomerBusinessProblem',    # min: 20, max: 255
              ExpectedCustomerSpend => [
                {
                  Amount       => 'MyString',
                  CurrencyCode => 'USD'
                  , # values: USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
                  Frequency     => 'Monthly',    # values: Monthly
                  TargetCompany =>
                    'MyExpectedCustomerSpendTargetCompanyString'
                  ,                                 # min: 1, max: 80
                  EstimationUrl => 'MyWebsiteUrl',  # min: 4, max: 255; OPTIONAL
                },
                ...
              ],    # min: 1
              TargetCompletionDate => 'MyDate',
              Title => 'MyProjectDetailsTitleString',    # min: 1, max: 255

            },
            ReceiverResponsibilities => [
              'Distributor',
              ... # values: Distributor, Reseller, Hardware Partner, Managed Service Provider, Software Partner, Services Partner, Training Partner, Co-Sell Facilitator, Facilitator
            ],
            SenderContacts => [
              {
                Email         => 'MySenderContactEmail',    # max: 80
                BusinessTitle => 'MyJobTitle',              # max: 80; OPTIONAL
                FirstName     => 'MyName',                  # max: 80; OPTIONAL
                LastName      => 'MyName',                  # max: 80; OPTIONAL
                Phone         => 'MyPhoneNumber',           # max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 3; OPTIONAL
          },    # OPTIONAL
        },
        Receiver => {
          Account => {
            AwsAccountId => 'MyAwsAccount',
            Alias        => 'MyAlias',        # max: 80; OPTIONAL
          },    # OPTIONAL
        },

      },

      );

    # Results:
    my $Arn = $CreateEngagementInvitationResponse->Arn;
    my $Id  = $CreateEngagementInvitationResponse->Id;

# Returns a L<Paws::PartnerCentralSelling::CreateEngagementInvitationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/CreateEngagementInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the engagement. Accepted values are
C<AWS> and C<Sandbox>, which determine the environment in which the
engagement is managed.



=head2 B<REQUIRED> ClientToken => Str

Specifies a unique, client-generated UUID to ensure that the request is
handled exactly once. This token helps prevent duplicate invitation
creations.



=head2 B<REQUIRED> EngagementIdentifier => Str

The unique identifier of the C<Engagement> associated with the
invitation. This parameter ensures the invitation is created within the
correct C<Engagement> context.



=head2 B<REQUIRED> Invitation => L<Paws::PartnerCentralSelling::Invitation>

The C<Invitation> object all information necessary to initiate an
engagement invitation to a partner. It contains a personalized message
from the sender, the invitation's receiver, and a payload. The
C<Payload> can be the C<OpportunityInvitation>, which includes detailed
structures for sender contacts, partner responsibilities, customer
information, and project details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEngagementInvitation in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

