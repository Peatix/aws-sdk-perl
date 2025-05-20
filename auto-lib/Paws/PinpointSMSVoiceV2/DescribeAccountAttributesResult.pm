
package Paws::PinpointSMSVoiceV2::DescribeAccountAttributesResult;
  use Moose;
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::AccountAttribute]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeAccountAttributesResult

=head1 ATTRIBUTES


=head2 AccountAttributes => ArrayRef[L<Paws::PinpointSMSVoiceV2::AccountAttribute>]

An array of AccountAttributes objects.


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 _request_id => Str


=cut

1;