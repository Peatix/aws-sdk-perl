
package Paws::MigrationHubStrategy::ListCollectorsResponse;
  use Moose;
  has Collectors => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::Collector]');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListCollectorsResponse

=head1 ATTRIBUTES


=head2 Collectors => ArrayRef[L<Paws::MigrationHubStrategy::Collector>]

The list of all the installed collectors.


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 _request_id => Str


=cut

