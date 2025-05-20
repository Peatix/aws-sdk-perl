
package Paws::Lightsail::CreateBucketAccessKeyResult;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Paws::Lightsail::AccessKey', traits => ['NameInRequest'], request_name => 'accessKey' );
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateBucketAccessKeyResult

=head1 ATTRIBUTES


=head2 AccessKey => L<Paws::Lightsail::AccessKey>

An object that describes the access key that is created.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.


=head2 _request_id => Str


=cut

1;