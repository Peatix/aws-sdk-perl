
package Paws::Connect::CreateHoursOfOperationOverrideResponse;
  use Moose;
  has HoursOfOperationOverrideId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateHoursOfOperationOverrideResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationOverrideId => Str

The identifier for the hours of operation override.


=head2 _request_id => Str


=cut

