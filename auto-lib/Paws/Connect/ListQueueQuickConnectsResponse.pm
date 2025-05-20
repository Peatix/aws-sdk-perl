
package Paws::Connect::ListQueueQuickConnectsResponse;
  use Moose;
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has QuickConnectSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::QuickConnectSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListQueueQuickConnectsResponse

=head1 ATTRIBUTES


=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 QuickConnectSummaryList => ArrayRef[L<Paws::Connect::QuickConnectSummary>]

Information about the quick connects.


=head2 _request_id => Str


=cut

