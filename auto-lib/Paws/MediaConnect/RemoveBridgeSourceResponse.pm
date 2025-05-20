
package Paws::MediaConnect::RemoveBridgeSourceResponse;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bridgeArn');
  has SourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveBridgeSourceResponse

=head1 ATTRIBUTES


=head2 BridgeArn => Str

The ARN of the bridge from which the source was removed.


=head2 SourceName => Str

The name of the bridge source that was removed.


=head2 _request_id => Str


=cut

