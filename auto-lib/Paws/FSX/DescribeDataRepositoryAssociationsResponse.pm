
package Paws::FSX::DescribeDataRepositoryAssociationsResponse;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::FSX::DataRepositoryAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeDataRepositoryAssociationsResponse

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::FSX::DataRepositoryAssociation>]

An array of one or more data repository association descriptions.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;