
package Paws::ChimeSDKVoice::ValidateE911Address;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has City => (is => 'ro', isa => 'Str', required => 1);
  has Country => (is => 'ro', isa => 'Str', required => 1);
  has PostalCode => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has StreetInfo => (is => 'ro', isa => 'Str', required => 1);
  has StreetNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateE911Address');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/emergency-calling/address');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::ValidateE911AddressResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ValidateE911Address - Arguments for method ValidateE911Address on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateE911Address on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method ValidateE911Address.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateE911Address.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $ValidateE911AddressResponse = $voice -chime->ValidateE911Address(
      AwsAccountId => 'MyNonEmptyString',
      City         => 'MySensitiveNonEmptyString',
      Country      => 'MySensitiveNonEmptyString',
      PostalCode   => 'MySensitiveNonEmptyString',
      State        => 'MySensitiveNonEmptyString',
      StreetInfo   => 'MySensitiveNonEmptyString',
      StreetNumber => 'MySensitiveNonEmptyString',

    );

    # Results:
    my $Address           = $ValidateE911AddressResponse->Address;
    my $AddressExternalId = $ValidateE911AddressResponse->AddressExternalId;
    my $CandidateAddressList =
      $ValidateE911AddressResponse->CandidateAddressList;
    my $ValidationResult = $ValidateE911AddressResponse->ValidationResult;

    # Returns a L<Paws::ChimeSDKVoice::ValidateE911AddressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/ValidateE911Address>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> City => Str

The address city, such as C<Portland>.



=head2 B<REQUIRED> Country => Str

The country in the address being validated as two-letter country code
in ISO 3166-1 alpha-2 format, such as C<US>. For more information, see
ISO 3166-1 alpha-2 (https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
in Wikipedia.



=head2 B<REQUIRED> PostalCode => Str

The dress postal code, such C<04352>.



=head2 B<REQUIRED> State => Str

The address state, such as C<ME>.



=head2 B<REQUIRED> StreetInfo => Str

The address street information, such as C<8th Avenue>.



=head2 B<REQUIRED> StreetNumber => Str

The address street number, such as C<200> or C<2121>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateE911Address in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

