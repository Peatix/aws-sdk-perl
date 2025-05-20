
package Paws::EC2::ModifyFleetResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyFleetResult

=head1 ATTRIBUTES


=head2 Return => Bool

If the request succeeds, the response returns C<true>. If the request
fails, no response is returned, and instead an error message is
returned.


=head2 _request_id => Str


=cut

