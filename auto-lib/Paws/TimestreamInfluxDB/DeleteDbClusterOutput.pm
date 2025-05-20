
package Paws::TimestreamInfluxDB::DeleteDbClusterOutput;
  use Moose;
  has DbClusterStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbClusterStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::DeleteDbClusterOutput

=head1 ATTRIBUTES


=head2 DbClusterStatus => Str

The status of the DB cluster.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"AVAILABLE">, C<"FAILED">, C<"DELETED">
=head2 _request_id => Str


=cut

1;