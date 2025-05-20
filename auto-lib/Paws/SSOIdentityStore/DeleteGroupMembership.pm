
package Paws::SSOIdentityStore::DeleteGroupMembership;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupMembership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::DeleteGroupMembershipResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DeleteGroupMembership - Arguments for method DeleteGroupMembership on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGroupMembership on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method DeleteGroupMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGroupMembership.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $DeleteGroupMembershipResponse = $identitystore->DeleteGroupMembership(
      IdentityStoreId => 'MyIdentityStoreId',
      MembershipId    => 'MyResourceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/DeleteGroupMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.



=head2 B<REQUIRED> MembershipId => Str

The identifier for a C<GroupMembership> in an identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGroupMembership in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

