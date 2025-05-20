
package Paws::S3Control::ListMultiRegionAccessPointsResult;
  use Moose;
  has AccessPoints => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::MultiRegionAccessPointReport]', request_name => 'AccessPoint', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListMultiRegionAccessPointsResult

=head1 ATTRIBUTES


=head2 AccessPoints => ArrayRef[L<Paws::S3Control::MultiRegionAccessPointReport>]

The list of Multi-Region Access Points associated with the user.



=head2 NextToken => Str

If the specified bucket has more Multi-Region Access Points than can be
returned in one call to this action, this field contains a continuation
token. You can use this token tin subsequent calls to this action to
retrieve additional Multi-Region Access Points.




=cut

