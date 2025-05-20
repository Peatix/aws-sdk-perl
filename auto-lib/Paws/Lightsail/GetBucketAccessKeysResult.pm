
package Paws::Lightsail::GetBucketAccessKeysResult;
  use Moose;
  has AccessKeys => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AccessKey]', traits => ['NameInRequest'], request_name => 'accessKeys' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBucketAccessKeysResult

=head1 ATTRIBUTES


=head2 AccessKeys => ArrayRef[L<Paws::Lightsail::AccessKey>]

An object that describes the access keys for the specified bucket.


=head2 _request_id => Str


=cut

1;