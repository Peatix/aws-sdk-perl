
package Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpointsResponse;
  use Moose;
  has LicenseServerEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpointsResponse

=head1 ATTRIBUTES


=head2 LicenseServerEndpoints => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint>]

An array of C<LicenseServerEndpoint> resources that contain detailed
information about the RDS License Servers that meet the request
criteria.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 _request_id => Str


=cut

