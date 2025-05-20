
package Paws::Textract::CreateAdapterResponse;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::CreateAdapterResponse

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string containing the unique ID for the adapter that has been
created.


=head2 _request_id => Str


=cut

1;