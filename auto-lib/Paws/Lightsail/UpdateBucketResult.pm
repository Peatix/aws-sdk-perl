
package Paws::Lightsail::UpdateBucketResult;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Paws::Lightsail::Bucket', traits => ['NameInRequest'], request_name => 'bucket' );
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateBucketResult

=head1 ATTRIBUTES


=head2 Bucket => L<Paws::Lightsail::Bucket>

An object that describes the bucket that is updated.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.


=head2 _request_id => Str


=cut

1;