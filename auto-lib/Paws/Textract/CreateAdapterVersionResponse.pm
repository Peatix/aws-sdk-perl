
package Paws::Textract::CreateAdapterVersionResponse;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');
  has AdapterVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::CreateAdapterVersionResponse

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string containing the unique ID for the adapter that has received a
new version.


=head2 AdapterVersion => Str

A string describing the new version of the adapter.


=head2 _request_id => Str


=cut

1;