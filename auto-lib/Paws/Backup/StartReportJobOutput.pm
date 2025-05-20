
package Paws::Backup::StartReportJobOutput;
  use Moose;
  has ReportJobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartReportJobOutput

=head1 ATTRIBUTES


=head2 ReportJobId => Str

The identifier of the report job. A unique, randomly generated,
Unicode, UTF-8 encoded string that is at most 1,024 bytes long. The
report job ID cannot be edited.


=head2 _request_id => Str


=cut

