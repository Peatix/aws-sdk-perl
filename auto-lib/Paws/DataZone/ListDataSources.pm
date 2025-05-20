
package Paws::DataZone::ListDataSources;
  use Moose;
  has ConnectionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'connectionIdentifier');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectIdentifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDataSourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDataSources - Arguments for method ListDataSources on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSources on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDataSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSources.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDataSourcesOutput = $datazone->ListDataSources(
      DomainIdentifier      => 'MyDomainId',
      ProjectIdentifier     => 'MyString',
      ConnectionIdentifier  => 'MyString',             # OPTIONAL
      EnvironmentIdentifier => 'MyString',             # OPTIONAL
      MaxResults            => 1,                      # OPTIONAL
      Name                  => 'MyName',               # OPTIONAL
      NextToken             => 'MyPaginationToken',    # OPTIONAL
      Status                => 'CREATING',             # OPTIONAL
      Type                  => 'MyDataSourceType',     # OPTIONAL
    );

    # Results:
    my $Items     = $ListDataSourcesOutput->Items;
    my $NextToken = $ListDataSourcesOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDataSourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDataSources>

=head1 ATTRIBUTES


=head2 ConnectionIdentifier => Str

The ID of the connection.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which to list the data
sources.



=head2 EnvironmentIdentifier => Str

The identifier of the environment in which to list the data sources.



=head2 MaxResults => Int

The maximum number of data sources to return in a single call to
C<ListDataSources>. When the number of data sources to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListDataSources> to list the next set of data sources.



=head2 Name => Str

The name of the data source.



=head2 NextToken => Str

When the number of data sources is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of data sources, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListDataSources> to list the next set of data sources.



=head2 B<REQUIRED> ProjectIdentifier => Str

The identifier of the project in which to list data sources.



=head2 Status => Str

The status of the data source.

Valid values are: C<"CREATING">, C<"FAILED_CREATION">, C<"READY">, C<"UPDATING">, C<"FAILED_UPDATE">, C<"RUNNING">, C<"DELETING">, C<"FAILED_DELETION">

=head2 Type => Str

The type of the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSources in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

