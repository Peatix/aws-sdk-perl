
package Paws::CleanRooms::CreatePrivacyBudgetTemplateOutput;
  use Moose;
  has PrivacyBudgetTemplate => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyBudgetTemplate', traits => ['NameInRequest'], request_name => 'privacyBudgetTemplate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreatePrivacyBudgetTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrivacyBudgetTemplate => L<Paws::CleanRooms::PrivacyBudgetTemplate>

A summary of the elements in the privacy budget template.


=head2 _request_id => Str


=cut

