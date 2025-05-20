
package Paws::FSX::DescribeSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Snapshot]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Snapshots => ArrayRef[L<Paws::FSX::Snapshot>]

An array of snapshots.


=head2 _request_id => Str


=cut

1;