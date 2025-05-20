
package Paws::IoTFleetWise::ListSignalCatalogsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalCatalogSummary]', traits => ['NameInRequest'], request_name => 'summaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListSignalCatalogsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 Summaries => ArrayRef[L<Paws::IoTFleetWise::SignalCatalogSummary>]

A list of information about each signal catalog.


=head2 _request_id => Str


=cut

1;