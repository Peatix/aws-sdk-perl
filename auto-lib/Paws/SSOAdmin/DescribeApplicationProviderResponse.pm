
package Paws::SSOAdmin::DescribeApplicationProviderResponse;
  use Moose;
  has ApplicationProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has DisplayData => (is => 'ro', isa => 'Paws::SSOAdmin::DisplayData');
  has FederationProtocol => (is => 'ro', isa => 'Str');
  has ResourceServerConfig => (is => 'ro', isa => 'Paws::SSOAdmin::ResourceServerConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeApplicationProviderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationProviderArn => Str

The ARN of the application provider.


=head2 DisplayData => L<Paws::SSOAdmin::DisplayData>

A structure with details about the display data for the application
provider.


=head2 FederationProtocol => Str

The protocol used to federate to the application provider.

Valid values are: C<"SAML">, C<"OAUTH">
=head2 ResourceServerConfig => L<Paws::SSOAdmin::ResourceServerConfig>

A structure with details about the receiving application.


=head2 _request_id => Str


=cut

1;