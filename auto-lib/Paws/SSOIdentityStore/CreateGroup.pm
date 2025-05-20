
package Paws::SSOIdentityStore::CreateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::CreateGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::CreateGroup - Arguments for method CreateGroup on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $CreateGroupResponse = $identitystore->CreateGroup(
      IdentityStoreId => 'MyIdentityStoreId',
      Description     => 'MySensitiveStringType',    # OPTIONAL
      DisplayName     => 'MyGroupDisplayName',       # OPTIONAL
    );

    # Results:
    my $GroupId         = $CreateGroupResponse->GroupId;
    my $IdentityStoreId = $CreateGroupResponse->IdentityStoreId;

    # Returns a L<Paws::SSOIdentityStore::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/CreateGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A string containing the description of the group.



=head2 DisplayName => Str

A string containing the name of the group. This value is commonly
displayed when the group is referenced. C<Administrator> and
C<AWSAdministrators> are reserved names and can't be used for users or
groups.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

