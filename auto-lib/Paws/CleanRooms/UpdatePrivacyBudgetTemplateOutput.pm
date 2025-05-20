
package Paws::CleanRooms::UpdatePrivacyBudgetTemplateOutput;
  use Moose;
  has PrivacyBudgetTemplate => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyBudgetTemplate', traits => ['NameInRequest'], request_name => 'privacyBudgetTemplate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdatePrivacyBudgetTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrivacyBudgetTemplate => L<Paws::CleanRooms::PrivacyBudgetTemplate>

Summary of the privacy budget template.


=head2 _request_id => Str


=cut

