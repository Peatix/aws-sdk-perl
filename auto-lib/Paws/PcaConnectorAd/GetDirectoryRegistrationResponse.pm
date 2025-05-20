
package Paws::PcaConnectorAd::GetDirectoryRegistrationResponse;
  use Moose;
  has DirectoryRegistration => (is => 'ro', isa => 'Paws::PcaConnectorAd::DirectoryRegistration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::GetDirectoryRegistrationResponse

=head1 ATTRIBUTES


=head2 DirectoryRegistration => L<Paws::PcaConnectorAd::DirectoryRegistration>

The directory registration represents the authorization of the
connector service with a directory.


=head2 _request_id => Str


=cut

