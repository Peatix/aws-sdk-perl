
package Paws::Keyspaces::RestoreTableResponse;
  use Moose;
  has RestoredTableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restoredTableARN' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::RestoreTableResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoredTableARN => Str

The Amazon Resource Name (ARN) of the restored table.


=head2 _request_id => Str


=cut

1;