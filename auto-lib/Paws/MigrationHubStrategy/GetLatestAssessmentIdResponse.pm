
package Paws::MigrationHubStrategy::GetLatestAssessmentIdResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetLatestAssessmentIdResponse

=head1 ATTRIBUTES


=head2 Id => Str

The latest ID for the specific assessment task.


=head2 _request_id => Str


=cut

