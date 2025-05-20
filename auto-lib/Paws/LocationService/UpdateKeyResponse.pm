
package Paws::LocationService::UpdateKeyResponse;
  use Moose;
  has KeyArn => (is => 'ro', isa => 'Str', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyArn => Str

The Amazon Resource Name (ARN) for the API key resource. Used when you
need to specify a resource across all Amazon Web Services.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:key/ExampleKey>

=back



=head2 B<REQUIRED> KeyName => Str

The name of the API key resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the API key resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

