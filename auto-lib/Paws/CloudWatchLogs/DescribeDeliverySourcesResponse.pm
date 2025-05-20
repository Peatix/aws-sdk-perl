
package Paws::CloudWatchLogs::DescribeDeliverySourcesResponse;
  use Moose;
  has DeliverySources => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::DeliverySource]', traits => ['NameInRequest'], request_name => 'deliverySources' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDeliverySourcesResponse

=head1 ATTRIBUTES


=head2 DeliverySources => ArrayRef[L<Paws::CloudWatchLogs::DeliverySource>]

An array of structures. Each structure contains information about one
delivery source in the account.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;