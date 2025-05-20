
package Paws::Wisdom::GetQuickResponseResponse;
  use Moose;
  has QuickResponse => (is => 'ro', isa => 'Paws::Wisdom::QuickResponseData', traits => ['NameInRequest'], request_name => 'quickResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetQuickResponseResponse

=head1 ATTRIBUTES


=head2 QuickResponse => L<Paws::Wisdom::QuickResponseData>

The quick response.


=head2 _request_id => Str


=cut

