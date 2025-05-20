
package Paws::MigrationHubStrategy::ListApplicationComponentsResponse;
  use Moose;
  has ApplicationComponentInfos => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::ApplicationComponentDetail]', traits => ['NameInRequest'], request_name => 'applicationComponentInfos');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListApplicationComponentsResponse

=head1 ATTRIBUTES


=head2 ApplicationComponentInfos => ArrayRef[L<Paws::MigrationHubStrategy::ApplicationComponentDetail>]

The list of application components with detailed information about each
component.


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 _request_id => Str


=cut

