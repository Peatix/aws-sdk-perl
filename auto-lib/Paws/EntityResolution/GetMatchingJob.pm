
package Paws::EntityResolution::GetMatchingJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMatchingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows/{workflowName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::GetMatchingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetMatchingJob - Arguments for method GetMatchingJob on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMatchingJob on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method GetMatchingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMatchingJob.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $GetMatchingJobOutput = $entityresolution->GetMatchingJob(
      JobId        => 'MyJobId',
      WorkflowName => 'MyEntityName',

    );

    # Results:
    my $EndTime            = $GetMatchingJobOutput->EndTime;
    my $ErrorDetails       = $GetMatchingJobOutput->ErrorDetails;
    my $JobId              = $GetMatchingJobOutput->JobId;
    my $Metrics            = $GetMatchingJobOutput->Metrics;
    my $OutputSourceConfig = $GetMatchingJobOutput->OutputSourceConfig;
    my $StartTime          = $GetMatchingJobOutput->StartTime;
    my $Status             = $GetMatchingJobOutput->Status;

    # Returns a L<Paws::EntityResolution::GetMatchingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/GetMatchingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMatchingJob in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

