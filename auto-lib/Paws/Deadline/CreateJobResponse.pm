
package Paws::Deadline::CreateJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID.


=head2 _request_id => Str


=cut

