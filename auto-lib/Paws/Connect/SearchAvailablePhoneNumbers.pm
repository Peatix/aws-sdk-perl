
package Paws::Connect::SearchAvailablePhoneNumbers;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumberCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumberPrefix => (is => 'ro', isa => 'Str');
  has PhoneNumberType => (is => 'ro', isa => 'Str', required => 1);
  has TargetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAvailablePhoneNumbers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/search-available');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchAvailablePhoneNumbersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchAvailablePhoneNumbers - Arguments for method SearchAvailablePhoneNumbers on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAvailablePhoneNumbers on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchAvailablePhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAvailablePhoneNumbers.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchAvailablePhoneNumbersResponse =
      $connect->SearchAvailablePhoneNumbers(
      PhoneNumberCountryCode => 'AF',
      PhoneNumberType        => 'TOLL_FREE',
      InstanceId             => 'MyInstanceId',           # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NextToken              => 'MyLargeNextToken',       # OPTIONAL
      PhoneNumberPrefix      => 'MyPhoneNumberPrefix',    # OPTIONAL
      TargetArn              => 'MyARN',                  # OPTIONAL
      );

    # Results:
    my $AvailableNumbersList =
      $SearchAvailablePhoneNumbersResponse->AvailableNumbersList;
    my $NextToken = $SearchAvailablePhoneNumbersResponse->NextToken;

    # Returns a L<Paws::Connect::SearchAvailablePhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchAvailablePhoneNumbers>

=head1 ATTRIBUTES


=head2 InstanceId => Str

The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can find the instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance. You must enter
C<InstanceId> or C<TargetArn>.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> PhoneNumberCountryCode => Str

The ISO country code.

Valid values are: C<"AF">, C<"AL">, C<"DZ">, C<"AS">, C<"AD">, C<"AO">, C<"AI">, C<"AQ">, C<"AG">, C<"AR">, C<"AM">, C<"AW">, C<"AU">, C<"AT">, C<"AZ">, C<"BS">, C<"BH">, C<"BD">, C<"BB">, C<"BY">, C<"BE">, C<"BZ">, C<"BJ">, C<"BM">, C<"BT">, C<"BO">, C<"BA">, C<"BW">, C<"BR">, C<"IO">, C<"VG">, C<"BN">, C<"BG">, C<"BF">, C<"BI">, C<"KH">, C<"CM">, C<"CA">, C<"CV">, C<"KY">, C<"CF">, C<"TD">, C<"CL">, C<"CN">, C<"CX">, C<"CC">, C<"CO">, C<"KM">, C<"CK">, C<"CR">, C<"HR">, C<"CU">, C<"CW">, C<"CY">, C<"CZ">, C<"CD">, C<"DK">, C<"DJ">, C<"DM">, C<"DO">, C<"TL">, C<"EC">, C<"EG">, C<"SV">, C<"GQ">, C<"ER">, C<"EE">, C<"ET">, C<"FK">, C<"FO">, C<"FJ">, C<"FI">, C<"FR">, C<"PF">, C<"GA">, C<"GM">, C<"GE">, C<"DE">, C<"GH">, C<"GI">, C<"GR">, C<"GL">, C<"GD">, C<"GU">, C<"GT">, C<"GG">, C<"GN">, C<"GW">, C<"GY">, C<"HT">, C<"HN">, C<"HK">, C<"HU">, C<"IS">, C<"IN">, C<"ID">, C<"IR">, C<"IQ">, C<"IE">, C<"IM">, C<"IL">, C<"IT">, C<"CI">, C<"JM">, C<"JP">, C<"JE">, C<"JO">, C<"KZ">, C<"KE">, C<"KI">, C<"KW">, C<"KG">, C<"LA">, C<"LV">, C<"LB">, C<"LS">, C<"LR">, C<"LY">, C<"LI">, C<"LT">, C<"LU">, C<"MO">, C<"MK">, C<"MG">, C<"MW">, C<"MY">, C<"MV">, C<"ML">, C<"MT">, C<"MH">, C<"MR">, C<"MU">, C<"YT">, C<"MX">, C<"FM">, C<"MD">, C<"MC">, C<"MN">, C<"ME">, C<"MS">, C<"MA">, C<"MZ">, C<"MM">, C<"NA">, C<"NR">, C<"NP">, C<"NL">, C<"AN">, C<"NC">, C<"NZ">, C<"NI">, C<"NE">, C<"NG">, C<"NU">, C<"KP">, C<"MP">, C<"NO">, C<"OM">, C<"PK">, C<"PW">, C<"PA">, C<"PG">, C<"PY">, C<"PE">, C<"PH">, C<"PN">, C<"PL">, C<"PT">, C<"PR">, C<"QA">, C<"CG">, C<"RE">, C<"RO">, C<"RU">, C<"RW">, C<"BL">, C<"SH">, C<"KN">, C<"LC">, C<"MF">, C<"PM">, C<"VC">, C<"WS">, C<"SM">, C<"ST">, C<"SA">, C<"SN">, C<"RS">, C<"SC">, C<"SL">, C<"SG">, C<"SX">, C<"SK">, C<"SI">, C<"SB">, C<"SO">, C<"ZA">, C<"KR">, C<"ES">, C<"LK">, C<"SD">, C<"SR">, C<"SJ">, C<"SZ">, C<"SE">, C<"CH">, C<"SY">, C<"TW">, C<"TJ">, C<"TZ">, C<"TH">, C<"TG">, C<"TK">, C<"TO">, C<"TT">, C<"TN">, C<"TR">, C<"TM">, C<"TC">, C<"TV">, C<"VI">, C<"UG">, C<"UA">, C<"AE">, C<"GB">, C<"US">, C<"UY">, C<"UZ">, C<"VU">, C<"VA">, C<"VE">, C<"VN">, C<"WF">, C<"EH">, C<"YE">, C<"ZM">, C<"ZW">

=head2 PhoneNumberPrefix => Str

The prefix of the phone number. If provided, it must contain C<+> as
part of the country code.



=head2 B<REQUIRED> PhoneNumberType => Str

The type of phone number.

Valid values are: C<"TOLL_FREE">, C<"DID">, C<"UIFN">, C<"SHARED">, C<"THIRD_PARTY_TF">, C<"THIRD_PARTY_DID">, C<"SHORT_CODE">

=head2 TargetArn => Str

The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed
through. You must enter C<InstanceId> or C<TargetArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAvailablePhoneNumbers in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

