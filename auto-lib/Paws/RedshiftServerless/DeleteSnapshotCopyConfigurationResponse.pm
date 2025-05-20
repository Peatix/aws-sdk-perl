
package Paws::RedshiftServerless::DeleteSnapshotCopyConfigurationResponse;
  use Moose;
  has SnapshotCopyConfiguration => (is => 'ro', isa => 'Paws::RedshiftServerless::SnapshotCopyConfiguration', traits => ['NameInRequest'], request_name => 'snapshotCopyConfiguration' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteSnapshotCopyConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotCopyConfiguration => L<Paws::RedshiftServerless::SnapshotCopyConfiguration>

The deleted snapshot copy configuration object.


=head2 _request_id => Str


=cut

1;