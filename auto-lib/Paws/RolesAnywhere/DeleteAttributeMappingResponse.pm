
package Paws::RolesAnywhere::DeleteAttributeMappingResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::RolesAnywhere::ProfileDetail', traits => ['NameInRequest'], request_name => 'profile', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::DeleteAttributeMappingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Profile => L<Paws::RolesAnywhere::ProfileDetail>

The state of the profile after a read or write operation.


=head2 _request_id => Str


=cut

