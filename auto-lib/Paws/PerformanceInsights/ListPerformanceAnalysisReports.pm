
package Paws::PerformanceInsights::ListPerformanceAnalysisReports;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has ListTags => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPerformanceAnalysisReports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::ListPerformanceAnalysisReportsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListPerformanceAnalysisReports - Arguments for method ListPerformanceAnalysisReports on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPerformanceAnalysisReports on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method ListPerformanceAnalysisReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPerformanceAnalysisReports.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $ListPerformanceAnalysisReportsResponse =
      $pi->ListPerformanceAnalysisReports(
      Identifier  => 'MyIdentifierString',
      ServiceType => 'RDS',
      ListTags    => 1,                      # OPTIONAL
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyNextToken',          # OPTIONAL
      );

    # Results:
    my $AnalysisReports =
      $ListPerformanceAnalysisReportsResponse->AnalysisReports;
    my $NextToken = $ListPerformanceAnalysisReportsResponse->NextToken;

# Returns a L<Paws::PerformanceInsights::ListPerformanceAnalysisReportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/ListPerformanceAnalysisReports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique for an Amazon
Web Services Region. Performance Insights gathers metrics from this
data source. In the console, the identifier is shown as I<ResourceID>.
When you call C<DescribeDBInstances>, the identifier is returned as
C<DbiResourceId>.

To use a DB instance as a data source, specify its C<DbiResourceId>
value. For example, specify C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.



=head2 ListTags => Bool

Specifies whether or not to include the list of tags in the response.



=head2 MaxResults => Int

The maximum number of items to return in the response. If more items
exist than the specified C<MaxResults> value, a pagination token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxResults>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics. Valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPerformanceAnalysisReports in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

