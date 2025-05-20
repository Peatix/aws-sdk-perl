
package Paws::Finspace::ListKxVolumesResponse;
  use Moose;
  has KxVolumeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxVolume]', traits => ['NameInRequest'], request_name => 'kxVolumeSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxVolumesResponse

=head1 ATTRIBUTES


=head2 KxVolumeSummaries => ArrayRef[L<Paws::Finspace::KxVolume>]

A summary of volumes.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

