
package Paws::Proton::UpdateAccountSettingsOutput;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::Proton::AccountSettings', traits => ['NameInRequest'], request_name => 'accountSettings' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateAccountSettingsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountSettings => L<Paws::Proton::AccountSettings>

The Proton pipeline service role and repository data shared across the
Amazon Web Services account.


=head2 _request_id => Str


=cut

1;