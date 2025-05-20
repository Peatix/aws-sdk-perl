
package Paws::PerformanceInsights::ListAvailableResourceDimensions;
  use Moose;
  has AuthorizedActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableResourceDimensions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::ListAvailableResourceDimensionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListAvailableResourceDimensions - Arguments for method ListAvailableResourceDimensions on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableResourceDimensions on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method ListAvailableResourceDimensions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableResourceDimensions.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $ListAvailableResourceDimensionsResponse =
      $pi->ListAvailableResourceDimensions(
      Identifier => 'MyIdentifierString',
      Metrics    => [
        'MySanitizedString', ...    # max: 256
      ],
      ServiceType       => 'RDS',
      AuthorizedActions => [
        'DescribeDimensionKeys',
        ... # values: DescribeDimensionKeys, GetDimensionKeyDetails, GetResourceMetrics
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $MetricDimensions =
      $ListAvailableResourceDimensionsResponse->MetricDimensions;
    my $NextToken = $ListAvailableResourceDimensionsResponse->NextToken;

# Returns a L<Paws::PerformanceInsights::ListAvailableResourceDimensionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/ListAvailableResourceDimensions>

=head1 ATTRIBUTES


=head2 AuthorizedActions => ArrayRef[Str|Undef]

The actions to discover the dimensions you are authorized to access. If
you specify multiple actions, then the response will contain the
dimensions common for all the actions.

When you don't specify this request parameter or provide an empty list,
the response contains all the available dimensions for the target
database engine whether or not you are authorized to access them.



=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique within an
Amazon Web Services Region. Performance Insights gathers metrics from
this data source. To use an Amazon RDS DB instance as a data source,
specify its C<DbiResourceId> value. For example, specify
C<db-ABCDEFGHIJKLMNOPQRSTU1VWZ>.



=head2 MaxResults => Int

The maximum number of items to return in the response. If more items
exist than the specified C<MaxRecords> value, a pagination token is
included in the response so that the remaining results can be
retrieved.



=head2 B<REQUIRED> Metrics => ArrayRef[Str|Undef]

The types of metrics for which to retrieve dimensions. Valid values
include C<db.load>.



=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableResourceDimensions in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

