
package Paws::LakeFormation::GetLFTagExpressionResponse;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTag]');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetLFTagExpressionResponse

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID in
which the LF-Tag expression is saved.


=head2 Description => Str

The description with information about the LF-Tag expression.


=head2 Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

The body of the LF-Tag expression. It is composed of one or more LF-Tag
key-value pairs.


=head2 Name => Str

The name for the LF-Tag expression.


=head2 _request_id => Str


=cut

