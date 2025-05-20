
package Paws::FSX::DescribeFileCachesResponse;
  use Moose;
  has FileCaches => (is => 'ro', isa => 'ArrayRef[Paws::FSX::FileCache]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeFileCachesResponse

=head1 ATTRIBUTES


=head2 FileCaches => ArrayRef[L<Paws::FSX::FileCache>]

The response object for the C<DescribeFileCaches> operation.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;