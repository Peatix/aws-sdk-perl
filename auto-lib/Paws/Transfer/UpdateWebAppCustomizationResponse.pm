
package Paws::Transfer::UpdateWebAppCustomizationResponse;
  use Moose;
  has WebAppId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateWebAppCustomizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebAppId => Str

Returns the unique identifier for the web app being updated.


=head2 _request_id => Str


=cut

1;