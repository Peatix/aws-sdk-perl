
package Paws::SSOIdentityStore::IsMemberInGroups;
  use Moose;
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has MemberId => (is => 'ro', isa => 'Paws::SSOIdentityStore::MemberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IsMemberInGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::IsMemberInGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::IsMemberInGroups - Arguments for method IsMemberInGroups on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IsMemberInGroups on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method IsMemberInGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IsMemberInGroups.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $IsMemberInGroupsResponse = $identitystore->IsMemberInGroups(
      GroupIds => [
        'MyResourceId', ...    # min: 1, max: 47
      ],
      IdentityStoreId => 'MyIdentityStoreId',
      MemberId        => {
        UserId => 'MyResourceId',    # min: 1, max: 47
      },

    );

    # Results:
    my $Results = $IsMemberInGroupsResponse->Results;

    # Returns a L<Paws::SSOIdentityStore::IsMemberInGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/IsMemberInGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupIds => ArrayRef[Str|Undef]

A list of identifiers for groups in the identity store.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.



=head2 B<REQUIRED> MemberId => L<Paws::SSOIdentityStore::MemberId>

An object containing the identifier of a group member.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IsMemberInGroups in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

