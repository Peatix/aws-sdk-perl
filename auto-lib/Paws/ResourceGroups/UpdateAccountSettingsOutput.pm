
package Paws::ResourceGroups::UpdateAccountSettingsOutput;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::ResourceGroups::AccountSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateAccountSettingsOutput

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::ResourceGroups::AccountSettings>

A structure that displays the status of the optional features in the
account.


=head2 _request_id => Str


=cut

