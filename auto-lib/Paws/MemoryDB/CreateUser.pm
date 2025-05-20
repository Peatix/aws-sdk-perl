
package Paws::MemoryDB::CreateUser;
  use Moose;
  has AccessString => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationMode => (is => 'ro', isa => 'Paws::MemoryDB::AuthenticationMode', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateUser - Arguments for method CreateUser on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CreateUserResponse = $memory -db->CreateUser(
      AccessString       => 'MyAccessString',
      AuthenticationMode => {
        Passwords => [ 'MyString', ... ],    # min: 1; OPTIONAL
        Type      => 'password',             # values: password, iam; OPTIONAL
      },
      UserName => 'MyUserName',
      Tags     => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $User = $CreateUserResponse->User;

    # Returns a L<Paws::MemoryDB::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessString => Str

Access permissions string used for this user.



=head2 B<REQUIRED> AuthenticationMode => L<Paws::MemoryDB::AuthenticationMode>

Denotes the user's authentication properties, such as whether it
requires a password to authenticate.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.



=head2 B<REQUIRED> UserName => Str

The name of the user. This value must be unique as it also serves as
the user identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

