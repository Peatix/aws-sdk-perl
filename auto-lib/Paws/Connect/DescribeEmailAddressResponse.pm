
package Paws::Connect::DescribeEmailAddressResponse;
  use Moose;
  has CreateTimestamp => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has EmailAddressArn => (is => 'ro', isa => 'Str');
  has EmailAddressId => (is => 'ro', isa => 'Str');
  has ModifiedTimestamp => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeEmailAddressResponse

=head1 ATTRIBUTES


=head2 CreateTimestamp => Str

The email address creation timestamp in ISO 8601 Datetime.


=head2 Description => Str

The description of the email address.


=head2 DisplayName => Str

The display name of email address


=head2 EmailAddress => Str

The email address with the instance, in [^\s@]+@[^\s@]+\.[^\s@]+
format.


=head2 EmailAddressArn => Str

The Amazon Resource Name (ARN) of the email address.


=head2 EmailAddressId => Str

The identifier of the email address.


=head2 ModifiedTimestamp => Str

The email address last modification timestamp in ISO 8601 Datetime.


=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

