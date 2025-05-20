
package Paws::Connect::GetPromptFileResponse;
  use Moose;
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has PromptPresignedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetPromptFileResponse

=head1 ATTRIBUTES


=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 PromptPresignedUrl => Str

A generated URL to the prompt that can be given to an unauthorized user
so they can access the prompt in S3.


=head2 _request_id => Str


=cut

