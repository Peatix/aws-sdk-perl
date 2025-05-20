
package Paws::Evidently::EvaluateFeatureResponse;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'details');
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has Value => (is => 'ro', isa => 'Paws::Evidently::VariableValue', traits => ['NameInRequest'], request_name => 'value');
  has Variation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'variation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::EvaluateFeatureResponse

=head1 ATTRIBUTES


=head2 Details => Str

If this user was assigned to a launch or experiment, this field lists
the launch or experiment name.


=head2 Reason => Str

Specifies the reason that the user session was assigned this variation.
Possible values include C<DEFAULT>, meaning the user was served the
default variation; C<LAUNCH_RULE_MATCH>, if the user session was
enrolled in a launch; C<EXPERIMENT_RULE_MATCH>, if the user session was
enrolled in an experiment; or C<ENTITY_OVERRIDES_MATCH>, if the user's
C<entityId> matches an override rule.


=head2 Value => L<Paws::Evidently::VariableValue>

The value assigned to this variation to differentiate it from the other
variations of this feature.


=head2 Variation => Str

The name of the variation that was served to the user session.


=head2 _request_id => Str


=cut

