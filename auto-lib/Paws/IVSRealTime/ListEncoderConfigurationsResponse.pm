
package Paws::IVSRealTime::ListEncoderConfigurationsResponse;
  use Moose;
  has EncoderConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::EncoderConfigurationSummary]', traits => ['NameInRequest'], request_name => 'encoderConfigurations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListEncoderConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncoderConfigurations => ArrayRef[L<Paws::IVSRealTime::EncoderConfigurationSummary>]

List of the matching EncoderConfigurations (summary information only).


=head2 NextToken => Str

If there are more encoder configurations than C<maxResults>, use
C<nextToken> in the request to get the next set.


=head2 _request_id => Str


=cut

