
package Paws::GreengrassV2::UpdateConnectivityInfoResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Message');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::UpdateConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message about the connectivity information update request.


=head2 Version => Str

The new version of the connectivity information for the core device.


=head2 _request_id => Str


=cut

