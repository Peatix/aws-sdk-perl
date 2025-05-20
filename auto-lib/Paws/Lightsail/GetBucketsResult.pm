
package Paws::Lightsail::GetBucketsResult;
  use Moose;
  has AccountLevelBpaSync => (is => 'ro', isa => 'Paws::Lightsail::AccountLevelBpaSync', traits => ['NameInRequest'], request_name => 'accountLevelBpaSync' );
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Bucket]', traits => ['NameInRequest'], request_name => 'buckets' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBucketsResult

=head1 ATTRIBUTES


=head2 AccountLevelBpaSync => L<Paws::Lightsail::AccountLevelBpaSync>

An object that describes the synchronization status of the Amazon S3
account-level block public access feature for your Lightsail buckets.

For more information about this feature and how it affects Lightsail
buckets, see Block public access for buckets in Amazon Lightsail
(https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-block-public-access-for-buckets).


=head2 Buckets => ArrayRef[L<Paws::Lightsail::Bucket>]

An array of objects that describe buckets.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetBuckets> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;