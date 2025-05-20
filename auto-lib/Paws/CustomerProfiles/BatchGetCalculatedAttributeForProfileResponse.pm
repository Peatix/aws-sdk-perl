
package Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileResponse;
  use Moose;
  has CalculatedAttributeValues => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::CalculatedAttributeValue]');
  has ConditionOverrides => (is => 'ro', isa => 'Paws::CustomerProfiles::ConditionOverrides');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileResponse

=head1 ATTRIBUTES


=head2 CalculatedAttributeValues => ArrayRef[L<Paws::CustomerProfiles::CalculatedAttributeValue>]

List of calculated attribute values retrieved.


=head2 ConditionOverrides => L<Paws::CustomerProfiles::ConditionOverrides>

Overrides the condition block within the original calculated attribute
definition.


=head2 Errors => ArrayRef[L<Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileError>]

List of errors for calculated attribute values that could not be
retrieved.


=head2 _request_id => Str


=cut

