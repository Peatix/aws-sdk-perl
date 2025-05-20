
package Paws::SSOIdentityStore::UpdateGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::AttributeOperation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::UpdateGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::UpdateGroup - Arguments for method UpdateGroup on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $UpdateGroupResponse = $identitystore->UpdateGroup(
      GroupId         => 'MyResourceId',
      IdentityStoreId => 'MyIdentityStoreId',
      Operations      => [
        {
          AttributePath  => 'MyAttributePath',    # min: 1, max: 255
          AttributeValue => {

          },                                      # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/UpdateGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.



=head2 B<REQUIRED> Operations => ArrayRef[L<Paws::SSOIdentityStore::AttributeOperation>]

A list of C<AttributeOperation> objects to apply to the requested
group. These operations might add, replace, or remove an attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

