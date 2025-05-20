
package Paws::Route53Domains::RetrieveDomainAuthCodeResponse;
  use Moose;
  has AuthCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RetrieveDomainAuthCodeResponse

=head1 ATTRIBUTES


=head2 AuthCode => Str

The authorization code for the domain.


=head2 _request_id => Str


=cut

1;