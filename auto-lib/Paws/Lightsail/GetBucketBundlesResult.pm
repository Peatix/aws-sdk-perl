
package Paws::Lightsail::GetBucketBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::BucketBundle]', traits => ['NameInRequest'], request_name => 'bundles' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBucketBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::Lightsail::BucketBundle>]

An object that describes bucket bundles.


=head2 _request_id => Str


=cut

1;