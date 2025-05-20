
package Paws::TimestreamWrite::DescribeBatchLoadTaskResponse;
  use Moose;
  has BatchLoadTaskDescription => (is => 'ro', isa => 'Paws::TimestreamWrite::BatchLoadTaskDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::DescribeBatchLoadTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchLoadTaskDescription => L<Paws::TimestreamWrite::BatchLoadTaskDescription>

Description of the batch load task.


=head2 _request_id => Str


=cut

1;