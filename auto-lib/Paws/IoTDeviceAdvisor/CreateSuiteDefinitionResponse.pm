
package Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has SuiteDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionArn');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionId');
  has SuiteDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the test suite was created.


=head2 SuiteDefinitionArn => Str

The Amazon Resource Name (ARN) of the test suite.


=head2 SuiteDefinitionId => Str

The UUID of the test suite created.


=head2 SuiteDefinitionName => Str

The suite definition name of the test suite. This is a required
parameter.


=head2 _request_id => Str


=cut

