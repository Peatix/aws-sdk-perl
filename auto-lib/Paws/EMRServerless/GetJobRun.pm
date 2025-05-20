
package Paws::EMRServerless::GetJobRun;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Attempt => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'attempt');
  has JobRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobRunId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/jobruns/{jobRunId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRServerless::GetJobRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::GetJobRun - Arguments for method GetJobRun on L<Paws::EMRServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobRun on the
L<EMR Serverless|Paws::EMRServerless> service. Use the attributes of this class
as arguments to method GetJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobRun.

=head1 SYNOPSIS

    my $emr-serverless = Paws->service('EMRServerless');
    my $GetJobRunResponse = $emr -serverless->GetJobRun(
      ApplicationId => 'MyApplicationId',
      JobRunId      => 'MyJobRunId',
      Attempt       => 1,                   # OPTIONAL
    );

    # Results:
    my $JobRun = $GetJobRunResponse->JobRun;

    # Returns a L<Paws::EMRServerless::GetJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-serverless/GetJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application on which the job run is submitted.



=head2 Attempt => Int

An optimal parameter that indicates the amount of attempts for the job.
If not specified, this value defaults to the attempt of the latest job.



=head2 B<REQUIRED> JobRunId => Str

The ID of the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobRun in L<Paws::EMRServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

