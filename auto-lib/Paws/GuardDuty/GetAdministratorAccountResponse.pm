
package Paws::GuardDuty::GetAdministratorAccountResponse;
  use Moose;
  has Administrator => (is => 'ro', isa => 'Paws::GuardDuty::Administrator', traits => ['NameInRequest'], request_name => 'administrator', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetAdministratorAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Administrator => L<Paws::GuardDuty::Administrator>

The administrator account details.


=head2 _request_id => Str


=cut

