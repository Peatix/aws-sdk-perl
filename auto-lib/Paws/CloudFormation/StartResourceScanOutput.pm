
package Paws::CloudFormation::StartResourceScanOutput;
  use Moose;
  has ResourceScanId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StartResourceScanOutput

=head1 ATTRIBUTES


=head2 ResourceScanId => Str

The Amazon Resource Name (ARN) of the resource scan. The format is
C<arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}>.
An example is
C<arn:aws:cloudformation:I<us-east-1>:I<123456789012>:resourceScan/I<f5b490f7-7ed4-428a-aa06-31ff25db0772>
>.


=head2 _request_id => Str


=cut

