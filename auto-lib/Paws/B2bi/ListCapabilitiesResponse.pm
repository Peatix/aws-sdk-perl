
package Paws::B2bi::ListCapabilitiesResponse;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::CapabilitySummary]', traits => ['NameInRequest'], request_name => 'capabilities' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListCapabilitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capabilities => ArrayRef[L<Paws::B2bi::CapabilitySummary>]

Returns one or more capabilities associated with this partnership.


=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.


=head2 _request_id => Str


=cut

1;