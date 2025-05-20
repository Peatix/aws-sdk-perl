
package Paws::LocationService::CreateKeyResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has KeyArn => (is => 'ro', isa => 'Str', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the API key resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> Key => Str

The key value/string of an API key. This value is used when making API
calls to authorize the call. For example, see GetMapGlyphs
(https://docs.aws.amazon.com/location/latest/APIReference/API_GetMapGlyphs.html).


=head2 B<REQUIRED> KeyArn => Str

The Amazon Resource Name (ARN) for the API key resource. Used when you
need to specify a resource across all Amazon Web Services.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:key/ExampleKey>

=back



=head2 B<REQUIRED> KeyName => Str

The name of the API key resource.


=head2 _request_id => Str


=cut

