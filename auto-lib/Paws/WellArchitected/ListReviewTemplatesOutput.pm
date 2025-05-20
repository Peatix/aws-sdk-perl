
package Paws::WellArchitected::ListReviewTemplatesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReviewTemplates => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ReviewTemplateSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListReviewTemplatesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ReviewTemplates => ArrayRef[L<Paws::WellArchitected::ReviewTemplateSummary>]

List of review templates.


=head2 _request_id => Str


=cut

