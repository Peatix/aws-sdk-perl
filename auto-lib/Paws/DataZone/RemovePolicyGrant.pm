
package Paws::DataZone::RemovePolicyGrant;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType', required => 1);
  has Principal => (is => 'ro', isa => 'Paws::DataZone::PolicyGrantPrincipal', traits => ['NameInRequest'], request_name => 'principal', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePolicyGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/removeGrant');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::RemovePolicyGrantOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RemovePolicyGrant - Arguments for method RemovePolicyGrant on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemovePolicyGrant on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method RemovePolicyGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemovePolicyGrant.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $RemovePolicyGrantOutput = $datazone->RemovePolicyGrant(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyString',
      EntityType       => 'DOMAIN_UNIT',
      PolicyType       => 'CREATE_DOMAIN_UNIT',
      Principal        => {
        DomainUnit => {
          DomainUnitDesignation => 'OWNER',    # values: OWNER
          DomainUnitGrantFilter => {
            AllDomainUnitsGrantFilter => {

            },                                 # OPTIONAL
          },    # OPTIONAL
          DomainUnitIdentifier => 'MyDomainUnitId', # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        Group => {
          GroupIdentifier => 'MyGroupIdentifier',    # OPTIONAL
        },    # OPTIONAL
        Project => {
          ProjectDesignation =>
            'OWNER',    # values: OWNER, CONTRIBUTOR, PROJECT_CATALOG_STEWARD
          ProjectGrantFilter => {
            DomainUnitFilter => {
              DomainUnit => 'MyDomainUnitId',    # min: 1, max: 256; OPTIONAL
              IncludeChildDomainUnits => 1,      # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ProjectIdentifier => 'MyProjectId',    # OPTIONAL
        },    # OPTIONAL
        User => {
          AllUsersGrantFilter => {

          },    # OPTIONAL
          UserIdentifier => 'MyUserIdentifier',    # OPTIONAL
        },    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/RemovePolicyGrant>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to remove a policy grant.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the entity from which you want to remove a policy grant.



=head2 B<REQUIRED> EntityType => Str

The type of the entity from which you want to remove a policy grant.

Valid values are: C<"DOMAIN_UNIT">, C<"ENVIRONMENT_BLUEPRINT_CONFIGURATION">, C<"ENVIRONMENT_PROFILE">, C<"ASSET_TYPE">

=head2 B<REQUIRED> PolicyType => Str

The type of the policy that you want to remove.

Valid values are: C<"CREATE_DOMAIN_UNIT">, C<"OVERRIDE_DOMAIN_UNIT_OWNERS">, C<"ADD_TO_PROJECT_MEMBER_POOL">, C<"OVERRIDE_PROJECT_OWNERS">, C<"CREATE_GLOSSARY">, C<"CREATE_FORM_TYPE">, C<"CREATE_ASSET_TYPE">, C<"CREATE_PROJECT">, C<"CREATE_ENVIRONMENT_PROFILE">, C<"DELEGATE_CREATE_ENVIRONMENT_PROFILE">, C<"CREATE_ENVIRONMENT">, C<"CREATE_ENVIRONMENT_FROM_BLUEPRINT">, C<"CREATE_PROJECT_FROM_PROJECT_PROFILE">, C<"USE_ASSET_TYPE">

=head2 B<REQUIRED> Principal => L<Paws::DataZone::PolicyGrantPrincipal>

The principal from which you want to remove a policy grant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemovePolicyGrant in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

