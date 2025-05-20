
package Paws::PerformanceInsights::ListAvailableResourceMetrics;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MetricTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableResourceMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::ListAvailableResourceMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListAvailableResourceMetrics - Arguments for method ListAvailableResourceMetrics on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableResourceMetrics on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method ListAvailableResourceMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableResourceMetrics.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $ListAvailableResourceMetricsResponse =
      $pi->ListAvailableResourceMetrics(
      Identifier  => 'MyIdentifierString',
      MetricTypes => [
        'MySanitizedString', ...    # max: 256
      ],
      ServiceType => 'RDS',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Metrics   = $ListAvailableResourceMetricsResponse->Metrics;
    my $NextToken = $ListAvailableResourceMetricsResponse->NextToken;

# Returns a L<Paws::PerformanceInsights::ListAvailableResourceMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/ListAvailableResourceMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique within an
Amazon Web Services Region. Performance Insights gathers metrics from
this data source. To use an Amazon RDS DB instance as a data source,
specify its C<DbiResourceId> value. For example, specify
C<db-ABCDEFGHIJKLMNOPQRSTU1VWZ>.



=head2 MaxResults => Int

The maximum number of items to return. If the C<MaxRecords> value is
less than the number of existing items, the response includes a
pagination token.



=head2 B<REQUIRED> MetricTypes => ArrayRef[Str|Undef]

The types of metrics to return in the response. Valid values in the
array include the following:

=over

=item *

C<os> (OS counter metrics) - All engines

=item *

C<db> (DB load metrics) - All engines except for Amazon DocumentDB

=item *

C<db.sql.stats> (per-SQL metrics) - All engines except for Amazon
DocumentDB

=item *

C<db.sql_tokenized.stats> (per-SQL digest metrics) - All engines except
for Amazon DocumentDB

=back




=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableResourceMetrics in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

