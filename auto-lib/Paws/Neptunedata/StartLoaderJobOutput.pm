
package Paws::Neptunedata::StartLoaderJobOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::StringValuedMap', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartLoaderJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => L<Paws::Neptunedata::StringValuedMap>

Contains a C<loadId> name-value pair that provides an identifier for
the load operation.


=head2 B<REQUIRED> Status => Str

The HTTP return code indicating the status of the load job.


=head2 _request_id => Str


=cut

