
package Paws::Backup::ListReportJobsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ReportJob]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListReportJobsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 ReportJobs => ArrayRef[L<Paws::Backup::ReportJob>]

Details about your report jobs in JSON format.


=head2 _request_id => Str


=cut

