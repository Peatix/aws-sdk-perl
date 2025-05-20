
package Paws::Support::DescribeCreateCaseOptionsResponse;
  use Moose;
  has CommunicationTypes => (is => 'ro', isa => 'ArrayRef[Paws::Support::CommunicationTypeOptions]', traits => ['NameInRequest'], request_name => 'communicationTypes' );
  has LanguageAvailability => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'languageAvailability' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCreateCaseOptionsResponse

=head1 ATTRIBUTES


=head2 CommunicationTypes => ArrayRef[L<Paws::Support::CommunicationTypeOptions>]

A JSON-formatted array that contains the available communication type
options, along with the available support timeframes for the given
inputs.


=head2 LanguageAvailability => Str

Language availability can be any of the following:

=over

=item *

available

=item *

best_effort

=item *

unavailable

=back



=head2 _request_id => Str


=cut

1;