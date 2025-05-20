
package Paws::LakeFormation::SearchTablesByLFTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TableList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::TaggedTable]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::SearchTablesByLFTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last. On the first run, if you include a not null (a value) token you
can get empty pages.


=head2 TableList => ArrayRef[L<Paws::LakeFormation::TaggedTable>]

A list of tables that meet the LF-tag conditions.


=head2 _request_id => Str


=cut

