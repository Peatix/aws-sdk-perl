
package Paws::ApplicationMigration::TemplateActionDocument;
  use Moose;
  has ActionID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionID');
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName');
  has Active => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'active');
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentIdentifier');
  has DocumentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentVersion');
  has ExternalParameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentExternalParameters', traits => ['NameInRequest'], request_name => 'externalParameters');
  has MustSucceedForCutover => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'mustSucceedForCutover');
  has OperatingSystem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operatingSystem');
  has Order => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'order');
  has Parameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has TimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutSeconds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::TemplateActionDocument

=head1 ATTRIBUTES


=head2 ActionID => Str

Template post migration custom action ID.


=head2 ActionName => Str

Template post migration custom action name.


=head2 Active => Bool

Template post migration custom action active status.


=head2 Category => Str

Template post migration custom action category.

Valid values are: C<"DISASTER_RECOVERY">, C<"OPERATING_SYSTEM">, C<"LICENSE_AND_SUBSCRIPTION">, C<"VALIDATION">, C<"OBSERVABILITY">, C<"REFACTORING">, C<"SECURITY">, C<"NETWORKING">, C<"CONFIGURATION">, C<"BACKUP">, C<"OTHER">
=head2 Description => Str

Template post migration custom action description.


=head2 DocumentIdentifier => Str

Template post migration custom action document identifier.


=head2 DocumentVersion => Str

Template post migration custom action document version.


=head2 ExternalParameters => L<Paws::ApplicationMigration::SsmDocumentExternalParameters>

Template post migration custom action external parameters.


=head2 MustSucceedForCutover => Bool

Template post migration custom action must succeed for cutover.


=head2 OperatingSystem => Str

Operating system eligible for this template post migration custom
action.


=head2 Order => Int

Template post migration custom action order.


=head2 Parameters => L<Paws::ApplicationMigration::SsmDocumentParameters>

Template post migration custom action parameters.


=head2 TimeoutSeconds => Int

Template post migration custom action timeout in seconds.


=head2 _request_id => Str


=cut

