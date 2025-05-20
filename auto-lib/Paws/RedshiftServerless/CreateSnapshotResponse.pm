
package Paws::RedshiftServerless::CreateSnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::RedshiftServerless::Snapshot', traits => ['NameInRequest'], request_name => 'snapshot' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateSnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::RedshiftServerless::Snapshot>

The created snapshot object.


=head2 _request_id => Str


=cut

1;