
package Paws::Transfer::CreateProfile;
  use Moose;
  has As2Id => (is => 'ro', isa => 'Str', required => 1);
  has CertificateIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProfileType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateProfile - Arguments for method CreateProfile on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateProfileResponse = $transfer->CreateProfile(
      As2Id          => 'MyAs2Id',
      ProfileType    => 'LOCAL',
      CertificateIds => [
        'MyCertificateId', ...    # min: 22, max: 22
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProfileId = $CreateProfileResponse->ProfileId;

    # Returns a L<Paws::Transfer::CreateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> As2Id => Str

The C<As2Id> is the I<AS2-name>, as defined in the RFC 4130
(https://datatracker.ietf.org/doc/html/rfc4130). For inbound transfers,
this is the C<AS2-From> header for the AS2 messages sent from the
partner. For outbound connectors, this is the C<AS2-To> header for the
AS2 messages sent to the partner using the C<StartFileTransfer> API
operation. This ID cannot include spaces.



=head2 CertificateIds => ArrayRef[Str|Undef]

An array of identifiers for the imported certificates. You use this
identifier for working with profiles and partner profiles.



=head2 B<REQUIRED> ProfileType => Str

Determines the type of profile to create:

=over

=item *

Specify C<LOCAL> to create a local profile. A local profile represents
the AS2-enabled Transfer Family server organization or party.

=item *

Specify C<PARTNER> to create a partner profile. A partner profile
represents a remote organization, external to Transfer Family.

=back


Valid values are: C<"LOCAL">, C<"PARTNER">

=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for AS2 profiles.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

