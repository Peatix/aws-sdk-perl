
package Paws::LexModelsV2::DescribeTestSetDiscrepancyReport;
  use Moose;
  has TestSetDiscrepancyReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetDiscrepancyReportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTestSetDiscrepancyReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsetdiscrepancy/{testSetDiscrepancyReportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeTestSetDiscrepancyReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSetDiscrepancyReport - Arguments for method DescribeTestSetDiscrepancyReport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTestSetDiscrepancyReport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeTestSetDiscrepancyReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTestSetDiscrepancyReport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeTestSetDiscrepancyReportResponse =
      $models - v2 -lex->DescribeTestSetDiscrepancyReport(
      TestSetDiscrepancyReportId => 'MyId',

      );

    # Results:
    my $CreationDateTime =
      $DescribeTestSetDiscrepancyReportResponse->CreationDateTime;
    my $FailureReasons =
      $DescribeTestSetDiscrepancyReportResponse->FailureReasons;
    my $LastUpdatedDataTime =
      $DescribeTestSetDiscrepancyReportResponse->LastUpdatedDataTime;
    my $Target = $DescribeTestSetDiscrepancyReportResponse->Target;
    my $TestSetDiscrepancyRawOutputUrl =
      $DescribeTestSetDiscrepancyReportResponse->TestSetDiscrepancyRawOutputUrl;
    my $TestSetDiscrepancyReportId =
      $DescribeTestSetDiscrepancyReportResponse->TestSetDiscrepancyReportId;
    my $TestSetDiscrepancyReportStatus =
      $DescribeTestSetDiscrepancyReportResponse->TestSetDiscrepancyReportStatus;
    my $TestSetDiscrepancyTopErrors =
      $DescribeTestSetDiscrepancyReportResponse->TestSetDiscrepancyTopErrors;
    my $TestSetId = $DescribeTestSetDiscrepancyReportResponse->TestSetId;

# Returns a L<Paws::LexModelsV2::DescribeTestSetDiscrepancyReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeTestSetDiscrepancyReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSetDiscrepancyReportId => Str

The unique identifier of the test set discrepancy report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTestSetDiscrepancyReport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

