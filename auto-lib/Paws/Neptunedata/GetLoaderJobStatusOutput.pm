
package Paws::Neptunedata::GetLoaderJobStatusOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::Document', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetLoaderJobStatusOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => L<Paws::Neptunedata::Document>

Status information about the load job, in a layout that could look like
this:


=head2 B<REQUIRED> Status => Str

The HTTP response code for the request.


=head2 _request_id => Str


=cut

