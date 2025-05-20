
package Paws::ELBv2::ModifyListenerAttributesOutput;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::ListenerAttribute]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyListenerAttributesOutput

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ELBv2::ListenerAttribute>]

Information about the listener attributes.


=head2 _request_id => Str


=cut

