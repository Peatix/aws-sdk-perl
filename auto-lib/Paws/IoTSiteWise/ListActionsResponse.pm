
package Paws::IoTSiteWise::ListActionsResponse;
  use Moose;
  has ActionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::ActionSummary]', traits => ['NameInRequest'], request_name => 'actionSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListActionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionSummaries => ArrayRef[L<Paws::IoTSiteWise::ActionSummary>]

A list that summarizes the actions associated with the specified asset.


=head2 B<REQUIRED> NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

