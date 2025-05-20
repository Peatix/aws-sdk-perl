
package Paws::Connect::GetEffectiveHoursOfOperationsResponse;
  use Moose;
  has EffectiveHoursOfOperationList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EffectiveHoursOfOperations]');
  has TimeZone => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetEffectiveHoursOfOperationsResponse

=head1 ATTRIBUTES


=head2 EffectiveHoursOfOperationList => ArrayRef[L<Paws::Connect::EffectiveHoursOfOperations>]

Information about the effective hours of operations


=head2 TimeZone => Str

The time zone for the hours of operation.


=head2 _request_id => Str


=cut

