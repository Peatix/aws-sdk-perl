
package Paws::DataZone::ListPolicyGrants;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'policyType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPolicyGrants');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListPolicyGrantsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListPolicyGrants - Arguments for method ListPolicyGrants on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPolicyGrants on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListPolicyGrants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPolicyGrants.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListPolicyGrantsOutput = $datazone->ListPolicyGrants(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyString',
      EntityType       => 'DOMAIN_UNIT',
      PolicyType       => 'CREATE_DOMAIN_UNIT',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $GrantList = $ListPolicyGrantsOutput->GrantList;
    my $NextToken = $ListPolicyGrantsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListPolicyGrantsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListPolicyGrants>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list policy grants.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the entity for which you want to list policy grants.



=head2 B<REQUIRED> EntityType => Str

The type of entity for which you want to list policy grants.

Valid values are: C<"DOMAIN_UNIT">, C<"ENVIRONMENT_BLUEPRINT_CONFIGURATION">, C<"ENVIRONMENT_PROFILE">, C<"ASSET_TYPE">

=head2 MaxResults => Int

The maximum number of grants to return in a single call to
C<ListPolicyGrants>. When the number of grants to be listed is greater
than the value of C<MaxResults>, the response contains a C<NextToken>
value that you can use in a subsequent call to C<ListPolicyGrants> to
list the next set of grants.



=head2 NextToken => Str

When the number of grants is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of grants, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListPolicyGrants> to list
the next set of grants.



=head2 B<REQUIRED> PolicyType => Str

The type of policy that you want to list.

Valid values are: C<"CREATE_DOMAIN_UNIT">, C<"OVERRIDE_DOMAIN_UNIT_OWNERS">, C<"ADD_TO_PROJECT_MEMBER_POOL">, C<"OVERRIDE_PROJECT_OWNERS">, C<"CREATE_GLOSSARY">, C<"CREATE_FORM_TYPE">, C<"CREATE_ASSET_TYPE">, C<"CREATE_PROJECT">, C<"CREATE_ENVIRONMENT_PROFILE">, C<"DELEGATE_CREATE_ENVIRONMENT_PROFILE">, C<"CREATE_ENVIRONMENT">, C<"CREATE_ENVIRONMENT_FROM_BLUEPRINT">, C<"CREATE_PROJECT_FROM_PROJECT_PROFILE">, C<"USE_ASSET_TYPE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPolicyGrants in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

