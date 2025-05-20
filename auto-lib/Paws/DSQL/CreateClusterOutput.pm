
package Paws::DSQL::CreateClusterOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtectionEnabled', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has MultiRegionProperties => (is => 'ro', isa => 'Paws::DSQL::MultiRegionProperties', traits => ['NameInRequest'], request_name => 'multiRegionProperties');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::CreateClusterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the created cluster.


=head2 B<REQUIRED> CreationTime => Str

The time of when created the cluster.


=head2 B<REQUIRED> DeletionProtectionEnabled => Bool

Whether deletion protection is enabled on this cluster.


=head2 B<REQUIRED> Identifier => Str

The ID of the created cluster.


=head2 MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>

The multi-Region cluster configuration details that were set during
cluster creation


=head2 B<REQUIRED> Status => Str

The status of the created cluster.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"IDLE">, C<"INACTIVE">, C<"UPDATING">, C<"DELETING">, C<"DELETED">, C<"FAILED">, C<"PENDING_SETUP">, C<"PENDING_DELETE">
=head2 _request_id => Str


=cut

