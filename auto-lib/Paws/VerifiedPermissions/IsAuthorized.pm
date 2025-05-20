
package Paws::VerifiedPermissions::IsAuthorized;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VerifiedPermissions::ActionIdentifier', traits => ['NameInRequest'], request_name => 'action' );
  has Context => (is => 'ro', isa => 'Paws::VerifiedPermissions::ContextDefinition', traits => ['NameInRequest'], request_name => 'context' );
  has Entities => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntitiesDefinition', traits => ['NameInRequest'], request_name => 'entities' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has Principal => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'principal' );
  has Resource => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'resource' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IsAuthorized');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::IsAuthorizedOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::IsAuthorized - Arguments for method IsAuthorized on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IsAuthorized on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method IsAuthorized.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IsAuthorized.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $IsAuthorizedOutput = $verifiedpermissions->IsAuthorized(
      PolicyStoreId => 'MyPolicyStoreId',
      Action        => {
        ActionId   => 'MyActionId',      # min: 1, max: 200
        ActionType => 'MyActionType',    # min: 1, max: 200

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
      Principal => {
        EntityId   => 'MyEntityId',      # min: 1, max: 200
        EntityType => 'MyEntityType',    # min: 1, max: 200

      },    # OPTIONAL
      Resource => {
        EntityId   => 'MyEntityId',      # min: 1, max: 200
        EntityType => 'MyEntityType',    # min: 1, max: 200

      },    # OPTIONAL
    );

    # Results:
    my $Decision            = $IsAuthorizedOutput->Decision;
    my $DeterminingPolicies = $IsAuthorizedOutput->DeterminingPolicies;
    my $Errors              = $IsAuthorizedOutput->Errors;

    # Returns a L<Paws::VerifiedPermissions::IsAuthorizedOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/IsAuthorized>

=head1 ATTRIBUTES


=head2 Action => L<Paws::VerifiedPermissions::ActionIdentifier>

Specifies the requested action to be authorized. For example, is the
principal authorized to perform this action on the resource?



=head2 Context => L<Paws::VerifiedPermissions::ContextDefinition>

Specifies additional context that can be used to make more granular
authorization decisions.



=head2 Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>

(Optional) Specifies the list of resources and principals and their
associated attributes that Verified Permissions can examine when
evaluating the policies. These additional entities and their attributes
can be referenced and checked by conditional elements in the policies
in the specified policy store.

You can include only principal and resource entities in this parameter;
you can't include actions. You must specify actions in the schema.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store. Policies in this policy store
will be used to make an authorization decision for the input.



=head2 Principal => L<Paws::VerifiedPermissions::EntityIdentifier>

Specifies the principal for which the authorization decision is to be
made.



=head2 Resource => L<Paws::VerifiedPermissions::EntityIdentifier>

Specifies the resource for which the authorization decision is to be
made.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IsAuthorized in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

