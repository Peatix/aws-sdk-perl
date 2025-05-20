
package Paws::SecurityIR::ListCaseEditsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::CaseEditItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Total => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'total');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListCaseEditsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SecurityIR::CaseEditItem>]

Response element for ListCaseEdits that includes the action,
eventtimestamp, message, and principal for the response.


=head2 NextToken => Str

Optional element.


=head2 Total => Int

Response element for ListCaseEdits that identifies the total number of
edits.


=head2 _request_id => Str


=cut

