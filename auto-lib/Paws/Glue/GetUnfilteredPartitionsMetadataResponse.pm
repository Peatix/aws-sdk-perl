
package Paws::Glue::GetUnfilteredPartitionsMetadataResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UnfilteredPartitions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::UnfilteredPartition]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUnfilteredPartitionsMetadataResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list of partitions does not
include the last one.


=head2 UnfilteredPartitions => ArrayRef[L<Paws::Glue::UnfilteredPartition>]

A list of requested partitions.


=head2 _request_id => Str


=cut

1;