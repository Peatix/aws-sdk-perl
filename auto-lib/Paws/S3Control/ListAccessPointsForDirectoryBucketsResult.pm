
package Paws::S3Control::ListAccessPointsForDirectoryBucketsResult;
  use Moose;
  has AccessPointList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::AccessPoint]', request_name => 'AccessPoint', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessPointsForDirectoryBucketsResult

=head1 ATTRIBUTES


=head2 AccessPointList => ArrayRef[L<Paws::S3Control::AccessPoint>]

Contains identification and configuration information for one or more
access points associated with the directory bucket.



=head2 NextToken => Str

If C<NextToken> is returned, there are more access points available
than requested in the C<maxResults> value. The value of C<NextToken> is
a unique pagination token for each page. Make the call again using the
returned token to retrieve the next page. Keep all other arguments
unchanged. Each pagination token expires after 24 hours.




=cut

