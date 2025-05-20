
package Paws::SSMContacts::GetRotationOverrideResult;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has NewContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RotationArn => (is => 'ro', isa => 'Str');
  has RotationOverrideId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetRotationOverrideResult

=head1 ATTRIBUTES


=head2 CreateTime => Str

The date and time when the override was created.


=head2 EndTime => Str

The date and time when the override ends.


=head2 NewContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts assigned to the
override of the on-call rotation.


=head2 RotationArn => Str

The Amazon Resource Name (ARN) of the on-call rotation that was
overridden.


=head2 RotationOverrideId => Str

The Amazon Resource Name (ARN) of the override to an on-call rotation.


=head2 StartTime => Str

The date and time when the override goes into effect.


=head2 _request_id => Str


=cut

1;