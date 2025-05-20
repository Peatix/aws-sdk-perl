
package Paws::PerformanceInsights::DeletePerformanceAnalysisReport;
  use Moose;
  has AnalysisReportId => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePerformanceAnalysisReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::DeletePerformanceAnalysisReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DeletePerformanceAnalysisReport - Arguments for method DeletePerformanceAnalysisReport on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePerformanceAnalysisReport on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method DeletePerformanceAnalysisReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePerformanceAnalysisReport.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $DeletePerformanceAnalysisReportResponse =
      $pi->DeletePerformanceAnalysisReport(
      AnalysisReportId => 'MyAnalysisReportId',
      Identifier       => 'MyIdentifierString',
      ServiceType      => 'RDS',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/DeletePerformanceAnalysisReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisReportId => Str

The unique identifier of the analysis report for deletion.



=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique for an Amazon
Web Services Region. Performance Insights gathers metrics from this
data source. In the console, the identifier is shown as I<ResourceID>.
When you call C<DescribeDBInstances>, the identifier is returned as
C<DbiResourceId>.

To use a DB instance as a data source, specify its C<DbiResourceId>
value. For example, specify C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights will
return metrics. Valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePerformanceAnalysisReport in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

