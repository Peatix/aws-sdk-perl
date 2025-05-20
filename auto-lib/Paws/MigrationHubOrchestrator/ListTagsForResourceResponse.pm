
package Paws::MigrationHubOrchestrator::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MigrationHubOrchestrator::TagMap>

The tags added to a resource.


=head2 _request_id => Str


=cut

