
package Paws::Inspector2::BatchGetCodeSnippetResponse;
  use Moose;
  has CodeSnippetResults => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CodeSnippetResult]', traits => ['NameInRequest'], request_name => 'codeSnippetResults');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CodeSnippetError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetCodeSnippetResponse

=head1 ATTRIBUTES


=head2 CodeSnippetResults => ArrayRef[L<Paws::Inspector2::CodeSnippetResult>]

The retrieved code snippets associated with the provided finding ARNs.


=head2 Errors => ArrayRef[L<Paws::Inspector2::CodeSnippetError>]

Any errors Amazon Inspector encountered while trying to retrieve the
requested code snippets.


=head2 _request_id => Str


=cut

