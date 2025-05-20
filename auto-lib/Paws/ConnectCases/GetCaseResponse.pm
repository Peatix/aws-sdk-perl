
package Paws::ConnectCases::GetCaseResponse;
  use Moose;
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldValue]', traits => ['NameInRequest'], request_name => 'fields', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetCaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::ConnectCases::FieldValue>]

A list of detailed field information.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 B<REQUIRED> TemplateId => Str

A unique identifier of a template.


=head2 _request_id => Str


=cut

