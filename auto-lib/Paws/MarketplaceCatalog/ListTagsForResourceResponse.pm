
package Paws::MarketplaceCatalog::ListTagsForResourceResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

Required. The ARN associated with the resource you want to list tags
on.


=head2 Tags => ArrayRef[L<Paws::MarketplaceCatalog::Tag>]

Required. A list of objects specifying each key name and value. Number
of objects allowed: 1-50.


=head2 _request_id => Str


=cut

