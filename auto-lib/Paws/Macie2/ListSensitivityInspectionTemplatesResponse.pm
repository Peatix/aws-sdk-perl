
package Paws::Macie2::ListSensitivityInspectionTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SensitivityInspectionTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::SensitivityInspectionTemplatesEntry]', traits => ['NameInRequest'], request_name => 'sensitivityInspectionTemplates');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListSensitivityInspectionTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 SensitivityInspectionTemplates => ArrayRef[L<Paws::Macie2::SensitivityInspectionTemplatesEntry>]

An array that specifies the unique identifier and name of the
sensitivity inspection template for the account.


=head2 _request_id => Str


=cut

