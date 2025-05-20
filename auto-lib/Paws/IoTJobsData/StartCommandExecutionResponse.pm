
package Paws::IoTJobsData::StartCommandExecutionResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::StartCommandExecutionResponse

=head1 ATTRIBUTES


=head2 ExecutionId => Str

A unique identifier for the command execution.


=head2 _request_id => Str


=cut

