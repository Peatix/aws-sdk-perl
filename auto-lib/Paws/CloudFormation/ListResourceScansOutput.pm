
package Paws::CloudFormation::ListResourceScansOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceScanSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceScanSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScansOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call
C<ListResourceScans> again and use that value for the C<NextToken>
parameter. If the request returns all results, C<NextToken> is set to
an empty string.


=head2 ResourceScanSummaries => ArrayRef[L<Paws::CloudFormation::ResourceScanSummary>]

The list of scans returned.


=head2 _request_id => Str


=cut

