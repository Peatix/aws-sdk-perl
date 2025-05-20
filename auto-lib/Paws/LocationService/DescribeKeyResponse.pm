
package Paws::LocationService::DescribeKeyResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ExpireTime => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has KeyArn => (is => 'ro', isa => 'Str', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has Restrictions => (is => 'ro', isa => 'Paws::LocationService::ApiKeyRestrictions', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the API key resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 Description => Str

The optional description for the API key resource.


=head2 B<REQUIRED> ExpireTime => Str

The timestamp for when the API key resource will expire in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> Key => Str

The key value/string of an API key.


=head2 B<REQUIRED> KeyArn => Str

The Amazon Resource Name (ARN) for the API key resource. Used when you
need to specify a resource across all Amazon Web Services.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:key/ExampleKey>

=back



=head2 B<REQUIRED> KeyName => Str

The name of the API key resource.


=head2 B<REQUIRED> Restrictions => L<Paws::LocationService::ApiKeyRestrictions>




=head2 Tags => L<Paws::LocationService::TagMap>

Tags associated with the API key resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the API key resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

