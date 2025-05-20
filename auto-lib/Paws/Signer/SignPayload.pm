
package Paws::Signer::SignPayload;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has PayloadFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payloadFormat', required => 1);
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileName', required => 1);
  has ProfileOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignPayload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-jobs/with-payload');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::SignPayloadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SignPayload - Arguments for method SignPayload on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SignPayload on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method SignPayload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SignPayload.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $SignPayloadResponse = $signer->SignPayload(
      Payload       => 'BlobPayload',
      PayloadFormat => 'MyString',
      ProfileName   => 'MyProfileName',
      ProfileOwner  => 'MyAccountId',     # OPTIONAL
    );

    # Results:
    my $JobId     = $SignPayloadResponse->JobId;
    my $JobOwner  = $SignPayloadResponse->JobOwner;
    my $Metadata  = $SignPayloadResponse->Metadata;
    my $Signature = $SignPayloadResponse->Signature;

    # Returns a L<Paws::Signer::SignPayloadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/SignPayload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => Str

Specifies the object digest (hash) to sign.



=head2 B<REQUIRED> PayloadFormat => Str

Payload content type. The single valid type is
C<application/vnd.cncf.notary.payload.v1+json>.



=head2 B<REQUIRED> ProfileName => Str

The name of the signing profile.



=head2 ProfileOwner => Str

The AWS account ID of the profile owner.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SignPayload in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

