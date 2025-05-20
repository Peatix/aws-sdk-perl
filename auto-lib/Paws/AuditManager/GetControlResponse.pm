
package Paws::AuditManager::GetControlResponse;
  use Moose;
  has Control => (is => 'ro', isa => 'Paws::AuditManager::Control', traits => ['NameInRequest'], request_name => 'control');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetControlResponse

=head1 ATTRIBUTES


=head2 Control => L<Paws::AuditManager::Control>

The details of the control that the C<GetControl> API returned.


=head2 _request_id => Str


=cut

