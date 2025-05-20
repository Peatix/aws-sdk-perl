
package Paws::Deadline::CreateLicenseEndpointResponse;
  use Moose;
  has LicenseEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseEndpointId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateLicenseEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseEndpointId => Str

The license endpoint ID.


=head2 _request_id => Str


=cut

