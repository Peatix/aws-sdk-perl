
package Paws::Outposts::GetOutpostSupportedInstanceTypesOutput;
  use Moose;
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::InstanceTypeItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOutpostSupportedInstanceTypesOutput

=head1 ATTRIBUTES


=head2 InstanceTypes => ArrayRef[L<Paws::Outposts::InstanceTypeItem>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

