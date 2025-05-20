
package Paws::RedshiftServerless::CreateSnapshotCopyConfigurationResponse;
  use Moose;
  has SnapshotCopyConfiguration => (is => 'ro', isa => 'Paws::RedshiftServerless::SnapshotCopyConfiguration', traits => ['NameInRequest'], request_name => 'snapshotCopyConfiguration' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateSnapshotCopyConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotCopyConfiguration => L<Paws::RedshiftServerless::SnapshotCopyConfiguration>

The snapshot copy configuration object that is returned.


=head2 _request_id => Str


=cut

1;