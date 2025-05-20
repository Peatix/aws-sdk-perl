
package Paws::TimestreamWrite::WriteRecordsResponse;
  use Moose;
  has RecordsIngested => (is => 'ro', isa => 'Paws::TimestreamWrite::RecordsIngested');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::WriteRecordsResponse

=head1 ATTRIBUTES


=head2 RecordsIngested => L<Paws::TimestreamWrite::RecordsIngested>

Information on the records ingested by this request.


=head2 _request_id => Str


=cut

1;