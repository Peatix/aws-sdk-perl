
package Paws::MemoryDB::UpdateUser;
  use Moose;
  has AccessString => (is => 'ro', isa => 'Str');
  has AuthenticationMode => (is => 'ro', isa => 'Paws::MemoryDB::AuthenticationMode');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::UpdateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateUser - Arguments for method UpdateUser on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $UpdateUserResponse = $memory -db->UpdateUser(
      UserName           => 'MyUserName',
      AccessString       => 'MyAccessString',    # OPTIONAL
      AuthenticationMode => {
        Passwords => [ 'MyString', ... ],    # min: 1; OPTIONAL
        Type      => 'password',             # values: password, iam; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $User = $UpdateUserResponse->User;

    # Returns a L<Paws::MemoryDB::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/UpdateUser>

=head1 ATTRIBUTES


=head2 AccessString => Str

Access permissions string used for this user.



=head2 AuthenticationMode => L<Paws::MemoryDB::AuthenticationMode>

Denotes the user's authentication properties, such as whether it
requires a password to authenticate.



=head2 B<REQUIRED> UserName => Str

The name of the user




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

