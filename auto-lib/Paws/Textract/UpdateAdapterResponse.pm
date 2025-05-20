
package Paws::Textract::UpdateAdapterResponse;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');
  has AdapterName => (is => 'ro', isa => 'Str');
  has AutoUpdate => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::UpdateAdapterResponse

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string containing a unique ID for the adapter that has been updated.


=head2 AdapterName => Str

A string containing the name of the adapter that has been updated.


=head2 AutoUpdate => Str

The auto-update status of the adapter that has been updated.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 CreationTime => Str

An object specifying the creation time of the the adapter that has been
updated.


=head2 Description => Str

A string containing the description of the adapter that has been
updated.


=head2 FeatureTypes => ArrayRef[Str|Undef]

List of the targeted feature types for the updated adapter.


=head2 _request_id => Str


=cut

1;