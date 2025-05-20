
package Paws::ResourceExplorer2::DeleteViewOutput;
  use Moose;
  has ViewArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::DeleteViewOutput

=head1 ATTRIBUTES


=head2 ViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view that you successfully deleted.


=head2 _request_id => Str


=cut

