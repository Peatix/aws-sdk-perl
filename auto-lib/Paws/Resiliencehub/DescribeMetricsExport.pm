
package Paws::Resiliencehub::DescribeMetricsExport;
  use Moose;
  has MetricsExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsExportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricsExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-metrics-export');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DescribeMetricsExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeMetricsExport - Arguments for method DescribeMetricsExport on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMetricsExport on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DescribeMetricsExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMetricsExport.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DescribeMetricsExportResponse = $resiliencehub->DescribeMetricsExport(
      MetricsExportId => 'MyString255',

    );

    # Results:
    my $ErrorMessage    = $DescribeMetricsExportResponse->ErrorMessage;
    my $ExportLocation  = $DescribeMetricsExportResponse->ExportLocation;
    my $MetricsExportId = $DescribeMetricsExportResponse->MetricsExportId;
    my $Status          = $DescribeMetricsExportResponse->Status;

    # Returns a L<Paws::Resiliencehub::DescribeMetricsExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DescribeMetricsExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricsExportId => Str

Identifier of the metrics export task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMetricsExport in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

