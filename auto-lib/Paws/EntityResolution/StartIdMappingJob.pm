
package Paws::EntityResolution::StartIdMappingJob;
  use Moose;
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingJobOutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig');
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartIdMappingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idmappingworkflows/{workflowName}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::StartIdMappingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::StartIdMappingJob - Arguments for method StartIdMappingJob on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartIdMappingJob on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method StartIdMappingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartIdMappingJob.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $StartIdMappingJobOutput = $entityresolution->StartIdMappingJob(
      WorkflowName       => 'MyEntityNameOrIdMappingWorkflowArn',
      OutputSourceConfig => [
        {
          OutputS3Path => 'MyS3Path',     # min: 1, max: 1024
          RoleArn      => 'MyRoleArn',    # min: 32, max: 512
          KMSArn       => 'MyKMSArn',     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $JobId              = $StartIdMappingJobOutput->JobId;
    my $OutputSourceConfig = $StartIdMappingJobOutput->OutputSourceConfig;

    # Returns a L<Paws::EntityResolution::StartIdMappingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/StartIdMappingJob>

=head1 ATTRIBUTES


=head2 OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingJobOutputSource>]

A list of C<OutputSource> objects.



=head2 B<REQUIRED> WorkflowName => Str

The name of the ID mapping job to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartIdMappingJob in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

