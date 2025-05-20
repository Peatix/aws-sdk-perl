
package Paws::PartnerCentralSelling::CreateEngagement;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Contexts => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementContextDetails]');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::CreateEngagementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateEngagement - Arguments for method CreateEngagement on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEngagement on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method CreateEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEngagement.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $CreateEngagementResponse = $partnercentral -selling->CreateEngagement(
      Catalog     => 'MyCatalogIdentifier',
      ClientToken => 'MyCreateEngagementRequestClientTokenString',
      Description => 'MyEngagementDescription',
      Title       => 'MyEngagementTitle',
      Contexts    => [
        {
          Type    => 'CustomerProject',    # values: CustomerProject
          Payload => {
            CustomerProject => {
              Customer => {
                CompanyName => 'MyCompanyName',         # min: 1, max: 120
                CountryCode => 'US'
                , # values: US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
                Industry => 'Aerospace'
                , # values: Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
                WebsiteUrl => 'MyCompanyWebsiteUrl',    # min: 4, max: 255

              },    # OPTIONAL
              Project => {
                BusinessProblem =>
                  'MyEngagementCustomerBusinessProblem',    # min: 20, max: 255
                TargetCompletionDate =>
'MyEngagementCustomerProjectDetailsTargetCompletionDateString',
                Title => 'MyEngagementCustomerProjectTitle',  # min: 1, max: 255

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateEngagementResponse->Arn;
    my $Id  = $CreateEngagementResponse->Id;

    # Returns a L<Paws::PartnerCentralSelling::CreateEngagementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/CreateEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The C<CreateEngagementRequest$Catalog> parameter specifies the catalog
related to the engagement. Accepted values are C<AWS> and C<Sandbox>,
which determine the environment in which the engagement is managed.



=head2 B<REQUIRED> ClientToken => Str

The C<CreateEngagementRequest$ClientToken> parameter specifies a
unique, case-sensitive identifier to ensure that the request is handled
exactly once. The value must not exceed sixty-four alphanumeric
characters.



=head2 Contexts => ArrayRef[L<Paws::PartnerCentralSelling::EngagementContextDetails>]

The C<Contexts> field is a required array of objects, with a maximum of
5 contexts allowed, specifying detailed information about customer
projects associated with the Engagement. Each context object contains a
C<Type> field indicating the context type, which must be
C<CustomerProject> in this version, and a C<Payload> field containing
the C<CustomerProject> details. The C<CustomerProject> object is
composed of two main components: C<Customer> and C<Project>. The
C<Customer> object includes information such as C<CompanyName>,
C<WebsiteUrl>, C<Industry>, and C<CountryCode>, providing essential
details about the customer. The C<Project> object contains C<Title>,
C<BusinessProblem>, and C<TargetCompletionDate>, offering insights into
the specific project associated with the customer. This structure
allows comprehensive context to be included within the Engagement,
facilitating effective collaboration between parties by providing
relevant customer and project information.



=head2 B<REQUIRED> Description => Str

Provides a description of the C<Engagement>.



=head2 B<REQUIRED> Title => Str

Specifies the title of the C<Engagement>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEngagement in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

