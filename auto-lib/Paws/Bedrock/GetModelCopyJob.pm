
package Paws::Bedrock::GetModelCopyJob;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelCopyJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-copy-jobs/{jobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetModelCopyJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelCopyJob - Arguments for method GetModelCopyJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelCopyJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetModelCopyJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelCopyJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetModelCopyJobResponse = $bedrock->GetModelCopyJob(
      JobArn => 'MyModelCopyJobArn',

    );

    # Results:
    my $CreationTime         = $GetModelCopyJobResponse->CreationTime;
    my $FailureMessage       = $GetModelCopyJobResponse->FailureMessage;
    my $JobArn               = $GetModelCopyJobResponse->JobArn;
    my $SourceAccountId      = $GetModelCopyJobResponse->SourceAccountId;
    my $SourceModelArn       = $GetModelCopyJobResponse->SourceModelArn;
    my $SourceModelName      = $GetModelCopyJobResponse->SourceModelName;
    my $Status               = $GetModelCopyJobResponse->Status;
    my $TargetModelArn       = $GetModelCopyJobResponse->TargetModelArn;
    my $TargetModelKmsKeyArn = $GetModelCopyJobResponse->TargetModelKmsKeyArn;
    my $TargetModelName      = $GetModelCopyJobResponse->TargetModelName;
    my $TargetModelTags      = $GetModelCopyJobResponse->TargetModelTags;

    # Returns a L<Paws::Bedrock::GetModelCopyJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetModelCopyJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the model copy job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelCopyJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

