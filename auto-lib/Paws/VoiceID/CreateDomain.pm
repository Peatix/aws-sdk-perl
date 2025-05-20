
package Paws::VoiceID::CreateDomain;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::VoiceID::ServerSideEncryptionConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::VoiceID::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::CreateDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::CreateDomain - Arguments for method CreateDomain on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $CreateDomainResponse = $voiceid->CreateDomain(
      Name                              => 'MyDomainName',
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048

      },
      ClientToken => 'MyClientTokenString',    # OPTIONAL
      Description => 'MyDescription',          # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Domain = $CreateDomainResponse->Domain;

    # Returns a L<Paws::VoiceID::CreateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/CreateDomain>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

A brief description of this domain.



=head2 B<REQUIRED> Name => Str

The name of the domain.



=head2 B<REQUIRED> ServerSideEncryptionConfiguration => L<Paws::VoiceID::ServerSideEncryptionConfiguration>

The configuration, containing the KMS key identifier, to be used by
Voice ID for the server-side encryption of your data. Refer to Amazon
Connect Voice ID encryption at rest
(https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid)
for more details on how the KMS key is used.



=head2 Tags => ArrayRef[L<Paws::VoiceID::Tag>]

A list of tags you want added to the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

