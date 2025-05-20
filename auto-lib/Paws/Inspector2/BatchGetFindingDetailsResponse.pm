
package Paws::Inspector2::BatchGetFindingDetailsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FindingDetailsError]', traits => ['NameInRequest'], request_name => 'errors');
  has FindingDetails => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FindingDetail]', traits => ['NameInRequest'], request_name => 'findingDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetFindingDetailsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Inspector2::FindingDetailsError>]

Error information for findings that details could not be returned for.


=head2 FindingDetails => ArrayRef[L<Paws::Inspector2::FindingDetail>]

A finding's vulnerability details.


=head2 _request_id => Str


=cut

