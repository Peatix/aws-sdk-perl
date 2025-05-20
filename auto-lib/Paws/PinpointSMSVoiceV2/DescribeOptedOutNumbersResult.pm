
package Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OptedOutNumbers => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::OptedOutNumberInformation]');
  has OptOutListArn => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 OptedOutNumbers => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptedOutNumberInformation>]

An array of OptedOutNumbersInformation objects that provide information
about the requested OptedOutNumbers.


=head2 OptOutListArn => Str

The Amazon Resource Name (ARN) of the OptOutList.


=head2 OptOutListName => Str

The name of the OptOutList.


=head2 _request_id => Str


=cut

1;