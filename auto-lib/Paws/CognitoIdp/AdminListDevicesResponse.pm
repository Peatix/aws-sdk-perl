
package Paws::CognitoIdp::AdminListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::DeviceType]');
  has PaginationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::CognitoIdp::DeviceType>]

An array of devices and their information. Each entry that's returned
includes device information, last-accessed and created dates, and the
device key.


=head2 PaginationToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 _request_id => Str


=cut

1;