
package Paws::IoTDeviceAdvisor::StartSuiteRunResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint');
  has SuiteRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunArn');
  has SuiteRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteRunId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::StartSuiteRunResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Starts a Device Advisor test suite run based on suite create time.


=head2 Endpoint => Str

The response of an Device Advisor test endpoint.


=head2 SuiteRunArn => Str

Amazon Resource Name (ARN) of the started suite run.


=head2 SuiteRunId => Str

Suite Run ID of the started suite run.


=head2 _request_id => Str


=cut

