
package Paws::Connect::DescribeHoursOfOperationOverrideResponse;
  use Moose;
  has HoursOfOperationOverride => (is => 'ro', isa => 'Paws::Connect::HoursOfOperationOverride');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeHoursOfOperationOverrideResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationOverride => L<Paws::Connect::HoursOfOperationOverride>

Information about the hours of operations override.


=head2 _request_id => Str


=cut

