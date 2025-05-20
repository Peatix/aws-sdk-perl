
package Paws::Resiliencehub::DescribeMetricsExportResponse;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has ExportLocation => (is => 'ro', isa => 'Paws::Resiliencehub::S3Location', traits => ['NameInRequest'], request_name => 'exportLocation');
  has MetricsExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsExportId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeMetricsExportResponse

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Explains the error that occurred while exporting the metrics.


=head2 ExportLocation => L<Paws::Resiliencehub::S3Location>

Specifies the name of the Amazon S3 bucket where the exported metrics
is stored.


=head2 B<REQUIRED> MetricsExportId => Str

Identifier for the metrics export task.


=head2 B<REQUIRED> Status => Str

Indicates the status of the metrics export task.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

