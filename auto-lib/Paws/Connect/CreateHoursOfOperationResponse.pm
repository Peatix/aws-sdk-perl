
package Paws::Connect::CreateHoursOfOperationResponse;
  use Moose;
  has HoursOfOperationArn => (is => 'ro', isa => 'Str');
  has HoursOfOperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateHoursOfOperationResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationArn => Str

The Amazon Resource Name (ARN) for the hours of operation.


=head2 HoursOfOperationId => Str

The identifier for the hours of operation.


=head2 _request_id => Str


=cut

