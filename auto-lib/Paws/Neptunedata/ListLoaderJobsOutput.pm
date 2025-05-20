
package Paws::Neptunedata::ListLoaderJobsOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::LoaderIdResult', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListLoaderJobsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => L<Paws::Neptunedata::LoaderIdResult>

The requested list of job IDs.


=head2 B<REQUIRED> Status => Str

Returns the status of the job list request.


=head2 _request_id => Str


=cut

