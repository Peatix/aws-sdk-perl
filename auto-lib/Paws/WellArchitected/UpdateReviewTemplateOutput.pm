
package Paws::WellArchitected::UpdateReviewTemplateOutput;
  use Moose;
  has ReviewTemplate => (is => 'ro', isa => 'Paws::WellArchitected::ReviewTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateReviewTemplateOutput

=head1 ATTRIBUTES


=head2 ReviewTemplate => L<Paws::WellArchitected::ReviewTemplate>

A review template.


=head2 _request_id => Str


=cut

