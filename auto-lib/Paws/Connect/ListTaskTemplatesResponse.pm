
package Paws::Connect::ListTaskTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TaskTemplateMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTaskTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.

This is always returned as a null in the response.


=head2 TaskTemplates => ArrayRef[L<Paws::Connect::TaskTemplateMetadata>]

Provides details about a list of task templates belonging to an
instance.


=head2 _request_id => Str


=cut

