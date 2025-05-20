
package Paws::Transfer::CreateWebAppResponse;
  use Moose;
  has WebAppId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateWebAppResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebAppId => Str

Returns a unique identifier for the web app.


=head2 _request_id => Str


=cut

1;