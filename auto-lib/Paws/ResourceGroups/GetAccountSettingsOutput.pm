
package Paws::ResourceGroups::GetAccountSettingsOutput;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::ResourceGroups::AccountSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetAccountSettingsOutput

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::ResourceGroups::AccountSettings>

The current settings for the optional features in Resource Groups.


=head2 _request_id => Str


=cut

