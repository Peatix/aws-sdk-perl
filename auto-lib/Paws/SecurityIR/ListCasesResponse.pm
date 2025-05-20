
package Paws::SecurityIR::ListCasesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ListCasesItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Total => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'total');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListCasesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SecurityIR::ListCasesItem>]

Response element for ListCases that includes caseARN, caseID,
caseStatus, closedDate, createdDate, engagementType, lastUpdatedDate,
pendingAction, resolverType, and title for each response.


=head2 NextToken => Str

Optional element.


=head2 Total => Int

Response element for ListCases providing the total number of responses.


=head2 _request_id => Str


=cut

