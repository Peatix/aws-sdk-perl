
package Paws::DataZone::ListDataSourceRuns;
  use Moose;
  has DataSourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceIdentifier', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSourceRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDataSourceRunsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDataSourceRuns - Arguments for method ListDataSourceRuns on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSourceRuns on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDataSourceRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSourceRuns.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDataSourceRunsOutput = $datazone->ListDataSourceRuns(
      DataSourceIdentifier => 'MyDataSourceId',
      DomainIdentifier     => 'MyDomainId',
      MaxResults           => 1,                      # OPTIONAL
      NextToken            => 'MyPaginationToken',    # OPTIONAL
      Status               => 'REQUESTED',            # OPTIONAL
    );

    # Results:
    my $Items     = $ListDataSourceRunsOutput->Items;
    my $NextToken = $ListDataSourceRunsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDataSourceRunsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDataSourceRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceIdentifier => Str

The identifier of the data source.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which to invoke the
C<ListDataSourceRuns> action.



=head2 MaxResults => Int

The maximum number of runs to return in a single call to
C<ListDataSourceRuns>. When the number of runs to be listed is greater
than the value of C<MaxResults>, the response contains a C<NextToken>
value that you can use in a subsequent call to C<ListDataSourceRuns> to
list the next set of runs.



=head2 NextToken => Str

When the number of runs is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of runs, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListDataSourceRuns> to
list the next set of runs.



=head2 Status => Str

The status of the data source.

Valid values are: C<"REQUESTED">, C<"RUNNING">, C<"FAILED">, C<"PARTIALLY_SUCCEEDED">, C<"SUCCESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSourceRuns in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

