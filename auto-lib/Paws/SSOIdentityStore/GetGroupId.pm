
package Paws::SSOIdentityStore::GetGroupId;
  use Moose;
  has AlternateIdentifier => (is => 'ro', isa => 'Paws::SSOIdentityStore::AlternateIdentifier', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::GetGroupIdResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::GetGroupId - Arguments for method GetGroupId on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupId on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method GetGroupId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupId.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $GetGroupIdResponse = $identitystore->GetGroupId(
      AlternateIdentifier => {
        ExternalId => {
          Id     => 'MyExternalIdIdentifier',    # min: 1, max: 256
          Issuer => 'MyExternalIdIssuer',        # min: 1, max: 100

        },    # OPTIONAL
        UniqueAttribute => {
          AttributePath  => 'MyAttributePath',    # min: 1, max: 255
          AttributeValue => {

          },

        },    # OPTIONAL
      },
      IdentityStoreId => 'MyIdentityStoreId',

    );

    # Results:
    my $GroupId         = $GetGroupIdResponse->GroupId;
    my $IdentityStoreId = $GetGroupIdResponse->IdentityStoreId;

    # Returns a L<Paws::SSOIdentityStore::GetGroupIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/GetGroupId>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlternateIdentifier => L<Paws::SSOIdentityStore::AlternateIdentifier>

A unique identifier for a user or group that is not the primary
identifier. This value can be an identifier from an external identity
provider (IdP) that is associated with the user, the group, or a unique
attribute. For the unique attribute, the only valid path is
C<displayName>.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupId in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

