
package Paws::Drs::DescribeRecoveryInstancesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::RecoveryInstance]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeRecoveryInstancesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::RecoveryInstance>]

An array of Recovery Instances.


=head2 NextToken => Str

The token of the next Recovery Instance to retrieve.


=head2 _request_id => Str


=cut

