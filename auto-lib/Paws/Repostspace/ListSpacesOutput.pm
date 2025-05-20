
package Paws::Repostspace::ListSpacesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Spaces => (is => 'ro', isa => 'ArrayRef[Paws::Repostspace::SpaceData]', traits => ['NameInRequest'], request_name => 'spaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::ListSpacesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you use when you request the next set of private
re:Posts.


=head2 B<REQUIRED> Spaces => ArrayRef[L<Paws::Repostspace::SpaceData>]

An array of structures that contain some information about the private
re:Posts in the account.


=head2 _request_id => Str


=cut

