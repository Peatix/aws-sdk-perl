
package Paws::Omics::ListReadSetExportJobsResponse;
  use Moose;
  has ExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ExportReadSetJobDetail]', traits => ['NameInRequest'], request_name => 'exportJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetExportJobsResponse

=head1 ATTRIBUTES


=head2 ExportJobs => ArrayRef[L<Paws::Omics::ExportReadSetJobDetail>]

A list of jobs.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

