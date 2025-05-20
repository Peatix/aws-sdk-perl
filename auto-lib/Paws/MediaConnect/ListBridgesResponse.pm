
package Paws::MediaConnect::ListBridgesResponse;
  use Moose;
  has Bridges => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::ListedBridge]', traits => ['NameInRequest'], request_name => 'bridges');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListBridgesResponse

=head1 ATTRIBUTES


=head2 Bridges => ArrayRef[L<Paws::MediaConnect::ListedBridge>]

A list of bridge summaries.


=head2 NextToken => Str

The token that identifies the batch of results that you want to see.

For example, you submit a C<ListBridges> request with C<MaxResults> set
at 5. The service returns the first batch of results (up to 5) and a
C<NextToken> value. To see the next batch of results, you can submit
the C<ListBridges> request a second time and specify the C<NextToken>
value.


=head2 _request_id => Str


=cut

