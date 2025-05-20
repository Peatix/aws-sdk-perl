
package Paws::EntityResolution::StartMatchingJob;
  use Moose;
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMatchingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows/{workflowName}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::StartMatchingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::StartMatchingJob - Arguments for method StartMatchingJob on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMatchingJob on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method StartMatchingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMatchingJob.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $StartMatchingJobOutput = $entityresolution->StartMatchingJob(
      WorkflowName => 'MyEntityName',

    );

    # Results:
    my $JobId = $StartMatchingJobOutput->JobId;

    # Returns a L<Paws::EntityResolution::StartMatchingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/StartMatchingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkflowName => Str

The name of the matching job to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMatchingJob in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

