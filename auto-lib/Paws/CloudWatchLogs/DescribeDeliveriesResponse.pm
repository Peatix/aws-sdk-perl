
package Paws::CloudWatchLogs::DescribeDeliveriesResponse;
  use Moose;
  has Deliveries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Delivery]', traits => ['NameInRequest'], request_name => 'deliveries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDeliveriesResponse

=head1 ATTRIBUTES


=head2 Deliveries => ArrayRef[L<Paws::CloudWatchLogs::Delivery>]

An array of structures. Each structure contains information about one
delivery in the account.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;