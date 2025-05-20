
package Paws::CleanRooms::ListConfiguredTablesOutput;
  use Moose;
  has ConfiguredTableSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::ConfiguredTableSummary]', traits => ['NameInRequest'], request_name => 'configuredTableSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListConfiguredTablesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTableSummaries => ArrayRef[L<Paws::CleanRooms::ConfiguredTableSummary>]

The configured tables listed by the request.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

