
package Paws::DataZone::ListEnvironments;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsAccountRegion');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentBlueprintIdentifier');
  has EnvironmentProfileIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentProfileIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectIdentifier', required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'provider');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListEnvironmentsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironments - Arguments for method ListEnvironments on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironments on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironments.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListEnvironmentsOutput = $datazone->ListEnvironments(
      DomainIdentifier               => 'MyDomainId',
      ProjectIdentifier              => 'MyProjectId',
      AwsAccountId                   => 'MyAwsAccountId',             # OPTIONAL
      AwsAccountRegion               => 'MyAwsRegion',                # OPTIONAL
      EnvironmentBlueprintIdentifier => 'MyEnvironmentBlueprintId',   # OPTIONAL
      EnvironmentProfileIdentifier   => 'MyEnvironmentProfileId',     # OPTIONAL
      MaxResults                     => 1,                            # OPTIONAL
      Name                           => 'MyString',                   # OPTIONAL
      NextToken                      => 'MyPaginationToken',          # OPTIONAL
      Provider                       => 'MyString',                   # OPTIONAL
      Status                         => 'ACTIVE',                     # OPTIONAL
    );

    # Results:
    my $Items     = $ListEnvironmentsOutput->Items;
    my $NextToken = $ListEnvironmentsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListEnvironmentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListEnvironments>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The identifier of the Amazon Web Services account where you want to
list environments.



=head2 AwsAccountRegion => Str

The Amazon Web Services region where you want to list environments.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 EnvironmentBlueprintIdentifier => Str

The identifier of the Amazon DataZone blueprint.



=head2 EnvironmentProfileIdentifier => Str

The identifier of the environment profile.



=head2 MaxResults => Int

The maximum number of environments to return in a single call to
C<ListEnvironments>. When the number of environments to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListEnvironments> to list the next set of environments.



=head2 Name => Str

The name of the environment.



=head2 NextToken => Str

When the number of environments is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of environments, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListEnvironments> to list the next set of environments.



=head2 B<REQUIRED> ProjectIdentifier => Str

The identifier of the Amazon DataZone project.



=head2 Provider => Str

The provider of the environment.



=head2 Status => Str

The status of the environments that you want to list.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">, C<"VALIDATION_FAILED">, C<"SUSPENDED">, C<"DISABLED">, C<"EXPIRED">, C<"DELETED">, C<"INACCESSIBLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironments in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

