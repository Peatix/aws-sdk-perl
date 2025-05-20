
package Paws::DataZone::ListConnections;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectIdentifier', required => 1);
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListConnectionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListConnections - Arguments for method ListConnections on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnections on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnections.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListConnectionsOutput = $datazone->ListConnections(
      DomainIdentifier      => 'MyDomainId',
      ProjectIdentifier     => 'MyProjectId',
      EnvironmentIdentifier => 'MyEnvironmentId',      # OPTIONAL
      MaxResults            => 1,                      # OPTIONAL
      Name                  => 'MyConnectionName',     # OPTIONAL
      NextToken             => 'MyPaginationToken',    # OPTIONAL
      SortBy                => 'NAME',                 # OPTIONAL
      SortOrder             => 'ASCENDING',            # OPTIONAL
      Type                  => 'ATHENA',               # OPTIONAL
    );

    # Results:
    my $Items     = $ListConnectionsOutput->Items;
    my $NextToken = $ListConnectionsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListConnectionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListConnections>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list connections.



=head2 EnvironmentIdentifier => Str

The ID of the environment where you want to list connections.



=head2 MaxResults => Int

The maximum number of connections to return in a single call to
ListConnections. When the number of connections to be listed is greater
than the value of MaxResults, the response contains a NextToken value
that you can use in a subsequent call to ListConnections to list the
next set of connections.



=head2 Name => Str

The name of the connection.



=head2 NextToken => Str

When the number of connections is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of connections, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListConnections to list the
next set of connections.



=head2 B<REQUIRED> ProjectIdentifier => Str

The ID of the project where you want to list connections.



=head2 SortBy => Str

Specifies how you want to sort the listed connections.

Valid values are: C<"NAME">

=head2 SortOrder => Str

Specifies the sort order for the listed connections.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Type => Str

The type of connection.

Valid values are: C<"ATHENA">, C<"BIGQUERY">, C<"DATABRICKS">, C<"DOCUMENTDB">, C<"DYNAMODB">, C<"HYPERPOD">, C<"IAM">, C<"MYSQL">, C<"OPENSEARCH">, C<"ORACLE">, C<"POSTGRESQL">, C<"REDSHIFT">, C<"SAPHANA">, C<"SNOWFLAKE">, C<"SPARK">, C<"SQLSERVER">, C<"TERADATA">, C<"VERTICA">, C<"WORKFLOWS_MWAA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnections in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

