
package Paws::Rekognition::GetMediaAnalysisJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMediaAnalysisJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetMediaAnalysisJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetMediaAnalysisJob - Arguments for method GetMediaAnalysisJob on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMediaAnalysisJob on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetMediaAnalysisJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMediaAnalysisJob.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetMediaAnalysisJobResponse = $rekognition->GetMediaAnalysisJob(
      JobId => 'MyMediaAnalysisJobId',

    );

    # Results:
    my $CompletionTimestamp = $GetMediaAnalysisJobResponse->CompletionTimestamp;
    my $CreationTimestamp   = $GetMediaAnalysisJobResponse->CreationTimestamp;
    my $FailureDetails      = $GetMediaAnalysisJobResponse->FailureDetails;
    my $Input               = $GetMediaAnalysisJobResponse->Input;
    my $JobId               = $GetMediaAnalysisJobResponse->JobId;
    my $JobName             = $GetMediaAnalysisJobResponse->JobName;
    my $KmsKeyId            = $GetMediaAnalysisJobResponse->KmsKeyId;
    my $ManifestSummary     = $GetMediaAnalysisJobResponse->ManifestSummary;
    my $OperationsConfig    = $GetMediaAnalysisJobResponse->OperationsConfig;
    my $OutputConfig        = $GetMediaAnalysisJobResponse->OutputConfig;
    my $Results             = $GetMediaAnalysisJobResponse->Results;
    my $Status              = $GetMediaAnalysisJobResponse->Status;

    # Returns a L<Paws::Rekognition::GetMediaAnalysisJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetMediaAnalysisJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Unique identifier for the media analysis job for which you want to
retrieve results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMediaAnalysisJob in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

