
package Paws::CodeGuruSecurity::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruSecurity::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CodeGuruSecurity::TagMap>

An array of key-value pairs used to tag an existing scan. A tag is a
custom attribute label with two parts:

=over

=item *

A tag key. For example, C<CostCenter>, C<Environment>, or C<Secret>.
Tag keys are case sensitive.

=item *

An optional tag value field. For example, C<111122223333>,
C<Production>, or a team name. Omitting the tag value is the same as
using an empty string. Tag values are case sensitive.

=back



=head2 _request_id => Str


=cut

