
package Paws::Route53RecoveryReadiness::ListResourceSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::ResourceSetOutput]', traits => ['NameInRequest'], request_name => 'resourceSets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListResourceSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 ResourceSets => ArrayRef[L<Paws::Route53RecoveryReadiness::ResourceSetOutput>]

A list of resource sets associated with the account.


=head2 _request_id => Str


=cut

