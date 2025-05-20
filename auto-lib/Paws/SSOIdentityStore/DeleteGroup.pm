
package Paws::SSOIdentityStore::DeleteGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::DeleteGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DeleteGroup - Arguments for method DeleteGroup on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGroup on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method DeleteGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGroup.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $DeleteGroupResponse = $identitystore->DeleteGroup(
      GroupId         => 'MyResourceId',
      IdentityStoreId => 'MyIdentityStoreId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/DeleteGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGroup in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

