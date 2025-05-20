
package Paws::RedShift::DescribeReservedNodeExchangeStatusOutputMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeExchangeStatusDetails => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ReservedNodeExchangeStatus]', request_name => 'ReservedNodeExchangeStatus', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeReservedNodeExchangeStatusOutputMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token provided by a previous
C<DescribeReservedNodeExchangeStatus> request.


=head2 ReservedNodeExchangeStatusDetails => ArrayRef[L<Paws::RedShift::ReservedNodeExchangeStatus>]

The details of the reserved-node exchange request, including the
status, request time, source reserved-node identifier, and additional
details.


=head2 _request_id => Str


=cut

