
package Paws::DSQL::DeleteClusterOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::DeleteClusterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the deleted cluster.


=head2 B<REQUIRED> CreationTime => Str

The time of when the cluster was created.


=head2 B<REQUIRED> Identifier => Str

The ID of the deleted cluster.


=head2 B<REQUIRED> Status => Str

The status of the cluster.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"IDLE">, C<"INACTIVE">, C<"UPDATING">, C<"DELETING">, C<"DELETED">, C<"FAILED">, C<"PENDING_SETUP">, C<"PENDING_DELETE">
=head2 _request_id => Str


=cut

