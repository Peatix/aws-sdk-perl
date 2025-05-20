
package Paws::Route53RecoveryControlConfig::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>

The tags associated with the resource.


=head2 _request_id => Str


=cut

