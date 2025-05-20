
package Paws::RolesAnywhere::ProfileDetailResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::RolesAnywhere::ProfileDetail', traits => ['NameInRequest'], request_name => 'profile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ProfileDetailResponse

=head1 ATTRIBUTES


=head2 Profile => L<Paws::RolesAnywhere::ProfileDetail>

The state of the profile after a read or write operation.


=head2 _request_id => Str


=cut

