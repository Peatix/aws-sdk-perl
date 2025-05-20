
package Paws::GreengrassV2::GetConnectivityInfoResponse;
  use Moose;
  has ConnectivityInfo => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ConnectivityInfo]', traits => ['NameInRequest'], request_name => 'ConnectivityInfo');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Message');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 ConnectivityInfo => ArrayRef[L<Paws::GreengrassV2::ConnectivityInfo>]

The connectivity information for the core device.


=head2 Message => Str

A message about the connectivity information request.


=head2 _request_id => Str


=cut

