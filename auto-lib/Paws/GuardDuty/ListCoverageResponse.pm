
package Paws::GuardDuty::ListCoverageResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::CoverageResource]', traits => ['NameInRequest'], request_name => 'resources', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListCoverageResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::GuardDuty::CoverageResource>]

A list of resources and their attributes providing cluster details.


=head2 _request_id => Str


=cut

