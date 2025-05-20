
package Paws::RedShift::GetReservedNodeExchangeConfigurationOptionsOutputMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeConfigurationOptionList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ReservedNodeConfigurationOption]', request_name => 'ReservedNodeConfigurationOption', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetReservedNodeExchangeConfigurationOptionsOutputMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token provided by a previous
C<GetReservedNodeExchangeConfigurationOptions> request.


=head2 ReservedNodeConfigurationOptionList => ArrayRef[L<Paws::RedShift::ReservedNodeConfigurationOption>]

the configuration options for the reserved-node exchange. These options
include information about the source reserved node and target reserved
node. Details include the node type, the price, the node count, and the
offering type.


=head2 _request_id => Str


=cut

