
package Paws::Bedrock::CreateModelCopyJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ModelKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelKmsKeyId');
  has SourceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceModelArn', required => 1);
  has TargetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetModelName', required => 1);
  has TargetModelTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'targetModelTags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelCopyJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-copy-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateModelCopyJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateModelCopyJob - Arguments for method CreateModelCopyJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelCopyJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateModelCopyJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelCopyJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateModelCopyJobResponse = $bedrock->CreateModelCopyJob(
      SourceModelArn     => 'MyModelArn',
      TargetModelName    => 'MyCustomModelName',
      ClientRequestToken => 'MyIdempotencyToken',    # OPTIONAL
      ModelKmsKeyId      => 'MyKmsKeyId',            # OPTIONAL
      TargetModelTags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateModelCopyJobResponse->JobArn;

    # Returns a L<Paws::Bedrock::CreateModelCopyJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateModelCopyJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 ModelKmsKeyId => Str

The ARN of the KMS key that you use to encrypt the model copy.



=head2 B<REQUIRED> SourceModelArn => Str

The Amazon Resource Name (ARN) of the model to be copied.



=head2 B<REQUIRED> TargetModelName => Str

A name for the copied model.



=head2 TargetModelTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to associate with the target model. For more information, see Tag
resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html) in
the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelCopyJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

