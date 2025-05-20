
package Paws::Bedrock::CreateInferenceProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InferenceProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceProfileName', required => 1);
  has ModelSource => (is => 'ro', isa => 'Paws::Bedrock::InferenceProfileModelSource', traits => ['NameInRequest'], request_name => 'modelSource', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInferenceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/inference-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateInferenceProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateInferenceProfile - Arguments for method CreateInferenceProfile on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInferenceProfile on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateInferenceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInferenceProfile.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateInferenceProfileResponse = $bedrock->CreateInferenceProfile(
      InferenceProfileName => 'MyInferenceProfileName',
      ModelSource          => {
        CopyFrom =>
          'MyInferenceProfileModelSourceArn',    # min: 1, max: 2048; OPTIONAL
      },
      ClientRequestToken => 'MyIdempotencyToken',               # OPTIONAL
      Description        => 'MyInferenceProfileDescription',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $InferenceProfileArn =
      $CreateInferenceProfileResponse->InferenceProfileArn;
    my $Status = $CreateInferenceProfileResponse->Status;

    # Returns a L<Paws::Bedrock::CreateInferenceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateInferenceProfile>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

A description for the inference profile.



=head2 B<REQUIRED> InferenceProfileName => Str

A name for the inference profile.



=head2 B<REQUIRED> ModelSource => L<Paws::Bedrock::InferenceProfileModelSource>

The foundation model or system-defined inference profile that the
inference profile will track metrics and costs for.



=head2 Tags => ArrayRef[L<Paws::Bedrock::Tag>]

An array of objects, each of which contains a tag and its value. For
more information, see Tagging resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInferenceProfile in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

