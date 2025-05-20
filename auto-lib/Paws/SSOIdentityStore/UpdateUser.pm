
package Paws::SSOIdentityStore::UpdateUser;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::AttributeOperation]', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::UpdateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::UpdateUser - Arguments for method UpdateUser on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $UpdateUserResponse = $identitystore->UpdateUser(
      IdentityStoreId => 'MyIdentityStoreId',
      Operations      => [
        {
          AttributePath  => 'MyAttributePath',    # min: 1, max: 255
          AttributeValue => {

          },                                      # OPTIONAL
        },
        ...
      ],
      UserId => 'MyResourceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/UpdateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.



=head2 B<REQUIRED> Operations => ArrayRef[L<Paws::SSOIdentityStore::AttributeOperation>]

A list of C<AttributeOperation> objects to apply to the requested user.
These operations might add, replace, or remove an attribute.



=head2 B<REQUIRED> UserId => Str

The identifier for a user in the identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

