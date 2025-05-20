
package Paws::MediaConnect::ListOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Offerings => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Offering]', traits => ['NameInRequest'], request_name => 'offerings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies the batch of results that you want to see.

For example, you submit a C<ListOfferings> request with C<MaxResults>
set at 5. The service returns the first batch of results (up to 5) and
a C<NextToken> value. To see the next batch of results, you can submit
the C<ListOfferings> request a second time and specify the C<NextToken>
value.


=head2 Offerings => ArrayRef[L<Paws::MediaConnect::Offering>]

A list of offerings that are available to this account in the current
Amazon Web Services Region.


=head2 _request_id => Str


=cut

