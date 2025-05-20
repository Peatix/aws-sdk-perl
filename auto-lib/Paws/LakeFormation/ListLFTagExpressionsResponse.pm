
package Paws::LakeFormation::ListLFTagExpressionsResponse;
  use Moose;
  has LFTagExpressions => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagExpression]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListLFTagExpressionsResponse

=head1 ATTRIBUTES


=head2 LFTagExpressions => ArrayRef[L<Paws::LakeFormation::LFTagExpression>]

Logical expressions composed of one more LF-Tag key-value pairs.


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 _request_id => Str


=cut

