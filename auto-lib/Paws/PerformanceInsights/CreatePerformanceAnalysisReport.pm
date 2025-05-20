
package Paws::PerformanceInsights::CreatePerformanceAnalysisReport;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePerformanceAnalysisReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::CreatePerformanceAnalysisReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::CreatePerformanceAnalysisReport - Arguments for method CreatePerformanceAnalysisReport on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePerformanceAnalysisReport on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method CreatePerformanceAnalysisReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePerformanceAnalysisReport.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $CreatePerformanceAnalysisReportResponse =
      $pi->CreatePerformanceAnalysisReport(
      EndTime     => '1970-01-01T01:00:00',
      Identifier  => 'MyIdentifierString',
      ServiceType => 'RDS',
      StartTime   => '1970-01-01T01:00:00',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AnalysisReportId =
      $CreatePerformanceAnalysisReportResponse->AnalysisReportId;

# Returns a L<Paws::PerformanceInsights::CreatePerformanceAnalysisReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/CreatePerformanceAnalysisReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time defined for the analysis report.



=head2 B<REQUIRED> Identifier => Str

An immutable, Amazon Web Services Region-unique identifier for a data
source. Performance Insights gathers metrics from this data source.

To use an Amazon RDS instance as a data source, you specify its
C<DbiResourceId> value. For example, specify
C<db-ADECBTYHKTSAUMUZQYPDS2GW4A>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights will
return metrics. Valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">

=head2 B<REQUIRED> StartTime => Str

The start time defined for the analysis report.



=head2 Tags => ArrayRef[L<Paws::PerformanceInsights::Tag>]

The metadata assigned to the analysis report consisting of a key-value
pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePerformanceAnalysisReport in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

