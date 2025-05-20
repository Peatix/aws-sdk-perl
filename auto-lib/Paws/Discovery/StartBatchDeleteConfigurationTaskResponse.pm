
package Paws::Discovery::StartBatchDeleteConfigurationTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartBatchDeleteConfigurationTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The unique identifier associated with the newly started deletion task.


=head2 _request_id => Str


=cut

1;