
package Paws::WellArchitected::ListCheckDetailsOutput;
  use Moose;
  has CheckDetails => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::CheckDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListCheckDetailsOutput

=head1 ATTRIBUTES


=head2 CheckDetails => ArrayRef[L<Paws::WellArchitected::CheckDetail>]

The details about the Trusted Advisor checks related to the
Well-Architected best practice.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

