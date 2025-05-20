
package Paws::ChimeSDKVoice::SearchAvailablePhoneNumbers;
  use Moose;
  has AreaCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'area-code');
  has City => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'city');
  has Country => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'country');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PhoneNumberType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'phone-number-type');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');
  has TollFreePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'toll-free-prefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAvailablePhoneNumbers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search?type=phone-numbers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::SearchAvailablePhoneNumbersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::SearchAvailablePhoneNumbers - Arguments for method SearchAvailablePhoneNumbers on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAvailablePhoneNumbers on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method SearchAvailablePhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAvailablePhoneNumbers.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $SearchAvailablePhoneNumbersResponse =
      $voice -chime->SearchAvailablePhoneNumbers(
      AreaCode        => 'MyString',               # OPTIONAL
      City            => 'MyString',               # OPTIONAL
      Country         => 'MyAlpha2CountryCode',    # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      NextToken       => 'MyString',               # OPTIONAL
      PhoneNumberType => 'Local',                  # OPTIONAL
      State           => 'MyString',               # OPTIONAL
      TollFreePrefix  => 'MyTollFreePrefix',       # OPTIONAL
      );

    # Results:
    my $E164PhoneNumbers =
      $SearchAvailablePhoneNumbersResponse->E164PhoneNumbers;
    my $NextToken = $SearchAvailablePhoneNumbersResponse->NextToken;

 # Returns a L<Paws::ChimeSDKVoice::SearchAvailablePhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/SearchAvailablePhoneNumbers>

=head1 ATTRIBUTES


=head2 AreaCode => Str

Confines a search to just the phone numbers associated with the
specified area code.



=head2 City => Str

Confines a search to just the phone numbers associated with the
specified city.



=head2 Country => Str

Confines a search to just the phone numbers associated with the
specified country.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token used to return the next page of results.



=head2 PhoneNumberType => Str

Confines a search to just the phone numbers associated with the
specified phone number type, either B<local> or B<toll-free>.

Valid values are: C<"Local">, C<"TollFree">

=head2 State => Str

Confines a search to just the phone numbers associated with the
specified state.



=head2 TollFreePrefix => Str

Confines a search to just the phone numbers associated with the
specified toll-free prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAvailablePhoneNumbers in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

