
package Paws::S3Outposts::ListOutpostsWithS3Result;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Outposts => (is => 'ro', isa => 'ArrayRef[Paws::S3Outposts::Outpost]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListOutpostsWithS3Result

=head1 ATTRIBUTES


=head2 NextToken => Str

Returns a token that you can use to call C<ListOutpostsWithS3> again
and receive additional results, if there are any.


=head2 Outposts => ArrayRef[L<Paws::S3Outposts::Outpost>]

Returns the list of Outposts that have the following characteristics:

=over

=item *

outposts that have S3 provisioned

=item *

outposts that are C<Active> (not pending any provisioning nor
decommissioned)

=item *

outposts to which the the calling Amazon Web Services account has
access

=back



=head2 _request_id => Str


=cut

