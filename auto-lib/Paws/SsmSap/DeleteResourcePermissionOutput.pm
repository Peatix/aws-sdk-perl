
package Paws::SsmSap::DeleteResourcePermissionOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::DeleteResourcePermissionOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The policy that removes permissions on the target database.


=head2 _request_id => Str


=cut

