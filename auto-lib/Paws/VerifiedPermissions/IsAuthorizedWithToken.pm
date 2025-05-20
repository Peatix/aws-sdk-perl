
package Paws::VerifiedPermissions::IsAuthorizedWithToken;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken' );
  has Action => (is => 'ro', isa => 'Paws::VerifiedPermissions::ActionIdentifier', traits => ['NameInRequest'], request_name => 'action' );
  has Context => (is => 'ro', isa => 'Paws::VerifiedPermissions::ContextDefinition', traits => ['NameInRequest'], request_name => 'context' );
  has Entities => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntitiesDefinition', traits => ['NameInRequest'], request_name => 'entities' );
  has IdentityToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityToken' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has Resource => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'resource' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IsAuthorizedWithToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::IsAuthorizedWithTokenOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::IsAuthorizedWithToken - Arguments for method IsAuthorizedWithToken on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IsAuthorizedWithToken on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method IsAuthorizedWithToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IsAuthorizedWithToken.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $IsAuthorizedWithTokenOutput =
      $verifiedpermissions->IsAuthorizedWithToken(
      PolicyStoreId => 'MyPolicyStoreId',
      AccessToken   => 'MyToken',           # OPTIONAL
      Action        => {
        ActionId   => 'MyActionId',         # min: 1, max: 200
        ActionType => 'MyActionType',       # min: 1, max: 200

      },    # OPTIONAL
      Context => {
        CedarJson  => 'MyCedarJson',    # OPTIONAL
        ContextMap => {
          'MyString' => {
            Boolean          => 1,              # OPTIONAL
            Decimal          => 'MyDecimal',    # min: 3, max: 23; OPTIONAL
            EntityIdentifier => {
              EntityId   => 'MyEntityId',       # min: 1, max: 200
              EntityType => 'MyEntityType',     # min: 1, max: 200

            },    # OPTIONAL
            Ipaddr => 'MyIpAddr',    # min: 1, max: 44; OPTIONAL
            Long   => 1,             # OPTIONAL
            Record => { 'MyString' => <AttributeValue>, },    # OPTIONAL
            Set    => [ <AttributeValue>, ... ],              # OPTIONAL
            String => 'MyStringAttribute',                    # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      Entities => {
        CedarJson  => 'MyCedarJson',    # OPTIONAL
        EntityList => [
          {
            Identifier => {
              EntityId   => 'MyEntityId',      # min: 1, max: 200
              EntityType => 'MyEntityType',    # min: 1, max: 200

            },    # OPTIONAL
            Attributes => {
              'MyString' => {
                Boolean          => 1,              # OPTIONAL
                Decimal          => 'MyDecimal',    # min: 3, max: 23; OPTIONAL
                EntityIdentifier => {
                  EntityId   => 'MyEntityId',       # min: 1, max: 200
                  EntityType => 'MyEntityType',     # min: 1, max: 200

                },    # OPTIONAL
                Ipaddr => 'MyIpAddr',    # min: 1, max: 44; OPTIONAL
                Long   => 1,             # OPTIONAL
                Record => { 'MyString' => <AttributeValue>, },    # OPTIONAL
                Set    => [ <AttributeValue>, ... ],              # OPTIONAL
                String => 'MyStringAttribute',                    # OPTIONAL
              },
            },    # OPTIONAL
            Parents => [
              {
                EntityId   => 'MyEntityId',      # min: 1, max: 200
                EntityType => 'MyEntityType',    # min: 1, max: 200

              },
              ...                                # OPTIONAL
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      IdentityToken => 'MyToken',    # OPTIONAL
      Resource      => {
        EntityId   => 'MyEntityId',      # min: 1, max: 200
        EntityType => 'MyEntityType',    # min: 1, max: 200

      },    # OPTIONAL
      );

    # Results:
    my $Decision            = $IsAuthorizedWithTokenOutput->Decision;
    my $DeterminingPolicies = $IsAuthorizedWithTokenOutput->DeterminingPolicies;
    my $Errors              = $IsAuthorizedWithTokenOutput->Errors;
    my $Principal           = $IsAuthorizedWithTokenOutput->Principal;

   # Returns a L<Paws::VerifiedPermissions::IsAuthorizedWithTokenOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/IsAuthorizedWithToken>

=head1 ATTRIBUTES


=head2 AccessToken => Str

Specifies an access token for the principal to be authorized. This
token is provided to you by the identity provider (IdP) associated with
the specified identity source. You must specify either an
C<accessToken>, an C<identityToken>, or both.

Must be an access token. Verified Permissions returns an error if the
C<token_use> claim in the submitted token isn't C<access>.



=head2 Action => L<Paws::VerifiedPermissions::ActionIdentifier>

Specifies the requested action to be authorized. Is the specified
principal authorized to perform this action on the specified resource.



=head2 Context => L<Paws::VerifiedPermissions::ContextDefinition>

Specifies additional context that can be used to make more granular
authorization decisions.



=head2 Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>

(Optional) Specifies the list of resources and their associated
attributes that Verified Permissions can examine when evaluating the
policies. These additional entities and their attributes can be
referenced and checked by conditional elements in the policies in the
specified policy store.

You can't include principals in this parameter, only resource and
action entities. This parameter can't include any entities of a type
that matches the user or group entity types that you defined in your
identity source.

=over

=item *

The C<IsAuthorizedWithToken> operation takes principal attributes from
B< I<only> > the C<identityToken> or C<accessToken> passed to the
operation.

=item *

For action entities, you can include only their C<Identifier> and
C<EntityType>.

=back




=head2 IdentityToken => Str

Specifies an identity token for the principal to be authorized. This
token is provided to you by the identity provider (IdP) associated with
the specified identity source. You must specify either an
C<accessToken>, an C<identityToken>, or both.

Must be an ID token. Verified Permissions returns an error if the
C<token_use> claim in the submitted token isn't C<id>.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store. Policies in this policy store
will be used to make an authorization decision for the input.



=head2 Resource => L<Paws::VerifiedPermissions::EntityIdentifier>

Specifies the resource for which the authorization decision is made.
For example, is the principal allowed to perform the action on the
resource?




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IsAuthorizedWithToken in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

