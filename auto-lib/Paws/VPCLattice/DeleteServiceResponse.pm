
package Paws::VPCLattice::DeleteServiceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeleteServiceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the service.


=head2 Id => Str

The ID of the service.


=head2 Name => Str

The name of the service.


=head2 Status => Str

The status. You can retry the operation if the status is
C<DELETE_FAILED>. However, if you retry it while the status is
C<DELETE_IN_PROGRESS>, the status doesn't change.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

