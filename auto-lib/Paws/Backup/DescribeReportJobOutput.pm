
package Paws::Backup::DescribeReportJobOutput;
  use Moose;
  has ReportJob => (is => 'ro', isa => 'Paws::Backup::ReportJob');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeReportJobOutput

=head1 ATTRIBUTES


=head2 ReportJob => L<Paws::Backup::ReportJob>

The information about a report job, including its completion and
creation times, report destination, unique report job ID, Amazon
Resource Name (ARN), report template, status, and status message.


=head2 _request_id => Str


=cut

