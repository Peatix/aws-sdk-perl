
package Paws::ApplicationMigration::PutTemplateAction;
  use Moose;
  has ActionID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionID', required => 1);
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName', required => 1);
  has Active => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'active');
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentIdentifier', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentVersion');
  has ExternalParameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentExternalParameters', traits => ['NameInRequest'], request_name => 'externalParameters');
  has LaunchConfigurationTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplateID', required => 1);
  has MustSucceedForCutover => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'mustSucceedForCutover');
  has OperatingSystem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operatingSystem');
  has Order => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'order', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has TimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutSeconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTemplateAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutTemplateAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::TemplateActionDocument');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::PutTemplateAction - Arguments for method PutTemplateAction on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTemplateAction on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method PutTemplateAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTemplateAction.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $TemplateActionDocument = $mgn->PutTemplateAction(
      ActionID                      => 'MyActionID',
      ActionName                    => 'MyBoundedString',
      DocumentIdentifier            => 'MyBoundedString',
      LaunchConfigurationTemplateID => 'MyLaunchConfigurationTemplateID',
      Order                         => 1,
      Active                        => 1,                        # OPTIONAL
      Category                      => 'DISASTER_RECOVERY',      # OPTIONAL
      Description                   => 'MyActionDescription',    # OPTIONAL
      DocumentVersion               => 'MyDocumentVersion',      # OPTIONAL
      ExternalParameters            => {
        'MySsmDocumentParameterName' => {
          DynamicPath => 'MyJmesPathString',    # min: 1, max: 1011; OPTIONAL
        },    # key: min: 1, max: 1011
      },    # OPTIONAL
      MustSucceedForCutover => 1,                            # OPTIONAL
      OperatingSystem       => 'MyOperatingSystemString',    # OPTIONAL
      Parameters            => {
        'MySsmDocumentParameterName' => [
          {
            ParameterName =>
              'MySsmParameterStoreParameterName',    # min: 1, max: 1011
            ParameterType => 'STRING',               # values: STRING

          },
          ...
        ],    # key: min: 1, max: 1011, value: max: 10
      },    # OPTIONAL
      TimeoutSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $ActionID              = $TemplateActionDocument->ActionID;
    my $ActionName            = $TemplateActionDocument->ActionName;
    my $Active                = $TemplateActionDocument->Active;
    my $Category              = $TemplateActionDocument->Category;
    my $Description           = $TemplateActionDocument->Description;
    my $DocumentIdentifier    = $TemplateActionDocument->DocumentIdentifier;
    my $DocumentVersion       = $TemplateActionDocument->DocumentVersion;
    my $ExternalParameters    = $TemplateActionDocument->ExternalParameters;
    my $MustSucceedForCutover = $TemplateActionDocument->MustSucceedForCutover;
    my $OperatingSystem       = $TemplateActionDocument->OperatingSystem;
    my $Order                 = $TemplateActionDocument->Order;
    my $Parameters            = $TemplateActionDocument->Parameters;
    my $TimeoutSeconds        = $TemplateActionDocument->TimeoutSeconds;

    # Returns a L<Paws::ApplicationMigration::TemplateActionDocument> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/PutTemplateAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionID => Str

Template post migration custom action ID.



=head2 B<REQUIRED> ActionName => Str

Template post migration custom action name.



=head2 Active => Bool

Template post migration custom action active status.



=head2 Category => Str

Template post migration custom action category.

Valid values are: C<"DISASTER_RECOVERY">, C<"OPERATING_SYSTEM">, C<"LICENSE_AND_SUBSCRIPTION">, C<"VALIDATION">, C<"OBSERVABILITY">, C<"REFACTORING">, C<"SECURITY">, C<"NETWORKING">, C<"CONFIGURATION">, C<"BACKUP">, C<"OTHER">

=head2 Description => Str

Template post migration custom action description.



=head2 B<REQUIRED> DocumentIdentifier => Str

Template post migration custom action document identifier.



=head2 DocumentVersion => Str

Template post migration custom action document version.



=head2 ExternalParameters => L<Paws::ApplicationMigration::SsmDocumentExternalParameters>

Template post migration custom action external parameters.



=head2 B<REQUIRED> LaunchConfigurationTemplateID => Str

Launch configuration template ID.



=head2 MustSucceedForCutover => Bool

Template post migration custom action must succeed for cutover.



=head2 OperatingSystem => Str

Operating system eligible for this template post migration custom
action.



=head2 B<REQUIRED> Order => Int

Template post migration custom action order.



=head2 Parameters => L<Paws::ApplicationMigration::SsmDocumentParameters>

Template post migration custom action parameters.



=head2 TimeoutSeconds => Int

Template post migration custom action timeout in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTemplateAction in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

