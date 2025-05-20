
package Paws::Config::DisassociateResourceTypesResponse;
  use Moose;
  has ConfigurationRecorder => (is => 'ro', isa => 'Paws::Config::ConfigurationRecorder', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DisassociateResourceTypesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationRecorder => L<Paws::Config::ConfigurationRecorder>




=head2 _request_id => Str


=cut

1;