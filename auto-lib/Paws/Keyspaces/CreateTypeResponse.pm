
package Paws::Keyspaces::CreateTypeResponse;
  use Moose;
  has KeyspaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceArn' , required => 1);
  has TypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeName' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::CreateTypeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceArn => Str

The unique identifier of the keyspace that contains the new type in the
format of an Amazon Resource Name (ARN).


=head2 B<REQUIRED> TypeName => Str

The formatted name of the user-defined type that was created. Note that
Amazon Keyspaces requires the formatted name of the type for other
operations, for example C<GetType>.


=head2 _request_id => Str


=cut

1;