
package Paws::Connect::ListPhoneNumbersV2;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumberCountryCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PhoneNumberPrefix => (is => 'ro', isa => 'Str');
  has PhoneNumberTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TargetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPhoneNumbersV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListPhoneNumbersV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPhoneNumbersV2 - Arguments for method ListPhoneNumbersV2 on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumbersV2 on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListPhoneNumbersV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumbersV2.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListPhoneNumbersV2Response = $connect->ListPhoneNumbersV2(
      InstanceId              => 'MyInstanceId',        # OPTIONAL
      MaxResults              => 1,                     # OPTIONAL
      NextToken               => 'MyLargeNextToken',    # OPTIONAL
      PhoneNumberCountryCodes => [
        'AF',
        ... # values: AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
      ],    # OPTIONAL
      PhoneNumberPrefix => 'MyPhoneNumberPrefix',    # OPTIONAL
      PhoneNumberTypes  => [
        'TOLL_FREE',
        ... # values: TOLL_FREE, DID, UIFN, SHARED, THIRD_PARTY_TF, THIRD_PARTY_DID, SHORT_CODE
      ],    # OPTIONAL
      TargetArn => 'MyARN',    # OPTIONAL
    );

    # Results:
    my $ListPhoneNumbersSummaryList =
      $ListPhoneNumbersV2Response->ListPhoneNumbersSummaryList;
    my $NextToken = $ListPhoneNumbersV2Response->NextToken;

    # Returns a L<Paws::Connect::ListPhoneNumbersV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListPhoneNumbersV2>

=head1 ATTRIBUTES


=head2 InstanceId => Str

The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can find the instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance. If both C<TargetArn>
and C<InstanceId> are not provided, this API lists numbers claimed to
all the Amazon Connect instances belonging to your account in the same
AWS Region as the request.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 PhoneNumberCountryCodes => ArrayRef[Str|Undef]

The ISO country code.



=head2 PhoneNumberPrefix => Str

The prefix of the phone number. If provided, it must contain C<+> as
part of the country code.



=head2 PhoneNumberTypes => ArrayRef[Str|Undef]

The type of phone number.



=head2 TargetArn => Str

The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed
through. If both C<TargetArn> and C<InstanceId> input are not provided,
this API lists numbers claimed to all the Amazon Connect instances
belonging to your account in the same Amazon Web Services Region as the
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumbersV2 in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

