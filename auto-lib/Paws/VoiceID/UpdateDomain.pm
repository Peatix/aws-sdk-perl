
package Paws::VoiceID::UpdateDomain;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::VoiceID::ServerSideEncryptionConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::UpdateDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::UpdateDomain - Arguments for method UpdateDomain on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomain on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method UpdateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomain.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $UpdateDomainResponse = $voiceid->UpdateDomain(
      DomainId                          => 'MyDomainId',
      Name                              => 'MyDomainName',
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048

      },
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Domain = $UpdateDomainResponse->Domain;

    # Returns a L<Paws::VoiceID::UpdateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/UpdateDomain>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description about this domain.



=head2 B<REQUIRED> DomainId => Str

The identifier of the domain to be updated.



=head2 B<REQUIRED> Name => Str

The name of the domain.



=head2 B<REQUIRED> ServerSideEncryptionConfiguration => L<Paws::VoiceID::ServerSideEncryptionConfiguration>

The configuration, containing the KMS key identifier, to be used by
Voice ID for the server-side encryption of your data. Changing the
domain's associated KMS key immediately triggers an asynchronous
process to remove dependency on the old KMS key, such that the domain's
data can only be accessed using the new KMS key. The domain's
C<ServerSideEncryptionUpdateDetails> contains the details for this
process.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomain in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

