
package Paws::TimestreamWrite::CreateBatchLoadTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::CreateBatchLoadTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the batch load task.


=head2 _request_id => Str


=cut

1;