
package Paws::B2bi::ListProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::ProfileSummary]', traits => ['NameInRequest'], request_name => 'profiles' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.


=head2 B<REQUIRED> Profiles => ArrayRef[L<Paws::B2bi::ProfileSummary>]

Returns an array of C<ProfileSummary> objects.


=head2 _request_id => Str


=cut

1;