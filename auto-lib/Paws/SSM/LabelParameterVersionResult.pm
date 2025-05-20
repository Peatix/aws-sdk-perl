
package Paws::SSM::LabelParameterVersionResult;
  use Moose;
  has InvalidLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ParameterVersion => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::LabelParameterVersionResult

=head1 ATTRIBUTES


=head2 InvalidLabels => ArrayRef[Str|Undef]

The label doesn't meet the requirements. For information about
parameter label requirements, see Working with parameter labels
(https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html)
in the I<Amazon Web Services Systems Manager User Guide>.


=head2 ParameterVersion => Int

The version of the parameter that has been labeled.


=head2 _request_id => Str


=cut

1;