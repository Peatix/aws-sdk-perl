
package Paws::Keyspaces::DeleteTypeResponse;
  use Moose;
  has KeyspaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceArn' , required => 1);
  has TypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeName' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::DeleteTypeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceArn => Str

The unique identifier of the keyspace from which the type was deleted
in the format of an Amazon Resource Name (ARN).


=head2 B<REQUIRED> TypeName => Str

The name of the type that was deleted.


=head2 _request_id => Str


=cut

1;