
package Paws::Rekognition::CreateFaceLivenessSession;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::CreateFaceLivenessSessionRequestSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFaceLivenessSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateFaceLivenessSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateFaceLivenessSession - Arguments for method CreateFaceLivenessSession on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFaceLivenessSession on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateFaceLivenessSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFaceLivenessSession.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateFaceLivenessSessionResponse =
      $rekognition->CreateFaceLivenessSession(
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      KmsKeyId           => 'MyKmsKeyId',              # OPTIONAL
      Settings           => {
        AuditImagesLimit => 1,                         # max: 4; OPTIONAL
        OutputConfig     => {
          S3Bucket    => 'MyS3Bucket',                 # min: 3, max: 255
          S3KeyPrefix => 'MyLivenessS3KeyPrefix',      # max: 950; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $SessionId = $CreateFaceLivenessSessionResponse->SessionId;

    # Returns a L<Paws::Rekognition::CreateFaceLivenessSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateFaceLivenessSession>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token is used to recognize the Face Liveness request. If the
same token is used with multiple C<CreateFaceLivenessSession> requests,
the same session is returned. This token is employed to avoid
unintentionally creating the same session multiple times.



=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
Used to encrypt audit images and reference images.



=head2 Settings => L<Paws::Rekognition::CreateFaceLivenessSessionRequestSettings>

A session settings object. It contains settings for the operation to be
performed. For Face Liveness, it accepts C<OutputConfig> and
C<AuditImagesLimit>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFaceLivenessSession in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

