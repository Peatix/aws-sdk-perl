
package Paws::Snowball::ListPickupLocationsResult;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::Address]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListPickupLocationsResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::Snowball::Address>]

Information about the address of pickup locations.


=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of C<ListPickupLocationsResult> objects, you have the option
of specifying C<NextToken> as the starting point for your returned
list.


=head2 _request_id => Str


=cut

1;