
package Paws::Deadline::GetLimitResponse;
  use Moose;
  has AmountRequirementName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amountRequirementName', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has CurrentCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'currentCount', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'limitId', required => 1);
  has MaxCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCount', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AmountRequirementName => Str

The value that you specify as the C<name> in the C<amounts> field of
the C<hostRequirements> in a step of a job template to declare the
limit requirement.


=head2 B<REQUIRED> CreatedAt => Str

The Unix timestamp of the date and time that the limit was created.


=head2 B<REQUIRED> CreatedBy => Str

The user identifier of the person that created the limit.


=head2 B<REQUIRED> CurrentCount => Int

The number of resources from the limit that are being used by jobs. The
result is delayed and may not be the count at the time that you called
the operation.


=head2 Description => Str

The description of the limit that helps identify what the limit is used
for.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> DisplayName => Str

The display name of the limit.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the limit.


=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit.


=head2 B<REQUIRED> MaxCount => Int

The maximum number of resources constrained by this limit. When all of
the resources are in use, steps that require the limit won't be
scheduled until the resource is available.

The C<maxValue> must not be 0. If the value is -1, there is no
restriction on the number of resources that can be acquired for this
limit.


=head2 UpdatedAt => Str

The Unix timestamp of the date and time that the limit was last
updated.


=head2 UpdatedBy => Str

The user identifier of the person that last updated the limit.


=head2 _request_id => Str


=cut

