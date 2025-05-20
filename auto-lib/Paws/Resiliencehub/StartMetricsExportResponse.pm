
package Paws::Resiliencehub::StartMetricsExportResponse;
  use Moose;
  has MetricsExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsExportId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartMetricsExportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricsExportId => Str

Identifier of the metrics export task.


=head2 B<REQUIRED> Status => Str

Indicates the status of the metrics export task.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

