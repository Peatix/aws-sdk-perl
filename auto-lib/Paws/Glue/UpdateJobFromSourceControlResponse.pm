
package Paws::Glue::UpdateJobFromSourceControlResponse;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateJobFromSourceControlResponse

=head1 ATTRIBUTES


=head2 JobName => Str

The name of the Glue job.


=head2 _request_id => Str


=cut

1;