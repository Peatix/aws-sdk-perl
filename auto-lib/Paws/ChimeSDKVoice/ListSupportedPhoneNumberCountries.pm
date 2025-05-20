
package Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountries;
  use Moose;
  has ProductType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'product-type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSupportedPhoneNumberCountries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number-countries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountries - Arguments for method ListSupportedPhoneNumberCountries on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSupportedPhoneNumberCountries on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method ListSupportedPhoneNumberCountries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSupportedPhoneNumberCountries.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $ListSupportedPhoneNumberCountriesResponse =
      $voice -chime->ListSupportedPhoneNumberCountries(
      ProductType => 'VoiceConnector',

      );

    # Results:
    my $PhoneNumberCountries =
      $ListSupportedPhoneNumberCountriesResponse->PhoneNumberCountries;

# Returns a L<Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/ListSupportedPhoneNumberCountries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductType => Str

The phone number product type.

Valid values are: C<"VoiceConnector">, C<"SipMediaApplicationDialIn">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSupportedPhoneNumberCountries in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

