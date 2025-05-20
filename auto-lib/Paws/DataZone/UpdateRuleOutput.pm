
package Paws::DataZone::UpdateRuleOutput;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Detail => (is => 'ro', isa => 'Paws::DataZone::RuleDetail', traits => ['NameInRequest'], request_name => 'detail', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has LastUpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedBy', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has RuleType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleType', required => 1);
  has Scope => (is => 'ro', isa => 'Paws::DataZone::RuleScope', traits => ['NameInRequest'], request_name => 'scope', required => 1);
  has Target => (is => 'ro', isa => 'Paws::DataZone::RuleTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action of the rule.

Valid values are: C<"CREATE_LISTING_CHANGE_SET">, C<"CREATE_SUBSCRIPTION_REQUEST">
=head2 B<REQUIRED> CreatedAt => Str

The timestamp at which the rule was created.


=head2 B<REQUIRED> CreatedBy => Str

The user who created the rule.


=head2 Description => Str

The description of the rule.


=head2 B<REQUIRED> Detail => L<Paws::DataZone::RuleDetail>

The detail of the rule.


=head2 B<REQUIRED> Identifier => Str

The ID of the rule.


=head2 B<REQUIRED> LastUpdatedBy => Str

The timestamp at which the rule was last updated.


=head2 B<REQUIRED> Name => Str

The name of the rule.


=head2 B<REQUIRED> Revision => Str

The revision of the rule.


=head2 B<REQUIRED> RuleType => Str

The type of the rule.

Valid values are: C<"METADATA_FORM_ENFORCEMENT">
=head2 B<REQUIRED> Scope => L<Paws::DataZone::RuleScope>

The scope of the rule.


=head2 B<REQUIRED> Target => L<Paws::DataZone::RuleTarget>

The target of the rule.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp at which the rule was last updated.


=head2 _request_id => Str


=cut

