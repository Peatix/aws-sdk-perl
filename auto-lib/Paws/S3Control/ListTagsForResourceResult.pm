
package Paws::S3Control::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::Tag]', request_name => 'Tag', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::S3Control::Tag>]

The Amazon Web Services resource tags that are associated with the
resource.




=cut

