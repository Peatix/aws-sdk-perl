
package Paws::DSQL::GetClusterOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtectionEnabled', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has MultiRegionProperties => (is => 'ro', isa => 'Paws::DSQL::MultiRegionProperties', traits => ['NameInRequest'], request_name => 'multiRegionProperties');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DSQL::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::GetClusterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the retrieved cluster.


=head2 B<REQUIRED> CreationTime => Str

The time of when the cluster was created.


=head2 B<REQUIRED> DeletionProtectionEnabled => Bool

Whether deletion protection is enabled in this cluster.


=head2 B<REQUIRED> Identifier => Str

The ID of the retrieved cluster.


=head2 MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>

Returns the current multi-Region cluster configuration, including
witness region and linked cluster information.


=head2 B<REQUIRED> Status => Str

The status of the retrieved cluster.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"IDLE">, C<"INACTIVE">, C<"UPDATING">, C<"DELETING">, C<"DELETED">, C<"FAILED">, C<"PENDING_SETUP">, C<"PENDING_DELETE">
=head2 Tags => L<Paws::DSQL::TagMap>




=head2 _request_id => Str


=cut

