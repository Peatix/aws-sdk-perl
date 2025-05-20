
package Paws::Textract::GetAdapterResponse;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');
  has AdapterName => (is => 'ro', isa => 'Str');
  has AutoUpdate => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::Textract::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetAdapterResponse

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string identifying the adapter that information has been retrieved
for.


=head2 AdapterName => Str

The name of the requested adapter.


=head2 AutoUpdate => Str

Binary value indicating if the adapter is being automatically updated
or not.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 CreationTime => Str

The date and time the requested adapter was created at.


=head2 Description => Str

The description for the requested adapter.


=head2 FeatureTypes => ArrayRef[Str|Undef]

List of the targeted feature types for the requested adapter.


=head2 Tags => L<Paws::Textract::TagMap>

A set of tags (key-value pairs) associated with the adapter that has
been retrieved.


=head2 _request_id => Str


=cut

1;