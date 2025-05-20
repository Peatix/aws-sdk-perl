
package Paws::MigrationHubRefactorSpaces::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

