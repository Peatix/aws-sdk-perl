
package Paws::Panorama::CreateJobForDevicesResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::Job]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateJobForDevicesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[L<Paws::Panorama::Job>]

A list of jobs.


=head2 _request_id => Str


=cut

