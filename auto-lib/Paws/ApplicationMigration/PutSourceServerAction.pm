
package Paws::ApplicationMigration::PutSourceServerAction;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has ActionID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionID', required => 1);
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName', required => 1);
  has Active => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'active');
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DocumentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentIdentifier', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentVersion');
  has ExternalParameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentExternalParameters', traits => ['NameInRequest'], request_name => 'externalParameters');
  has MustSucceedForCutover => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'mustSucceedForCutover');
  has Order => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'order', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::ApplicationMigration::SsmDocumentParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);
  has TimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutSeconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSourceServerAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutSourceServerAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::SourceServerActionDocument');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::PutSourceServerAction - Arguments for method PutSourceServerAction on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSourceServerAction on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method PutSourceServerAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSourceServerAction.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $SourceServerActionDocument = $mgn->PutSourceServerAction(
      ActionID           => 'MyActionID',
      ActionName         => 'MyActionName',
      DocumentIdentifier => 'MyBoundedString',
      Order              => 1,
      SourceServerID     => 'MySourceServerID',
      AccountID          => 'MyAccountID',            # OPTIONAL
      Active             => 1,                        # OPTIONAL
      Category           => 'DISASTER_RECOVERY',      # OPTIONAL
      Description        => 'MyActionDescription',    # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion',      # OPTIONAL
      ExternalParameters => {
        'MySsmDocumentParameterName' => {
          DynamicPath => 'MyJmesPathString',    # min: 1, max: 1011; OPTIONAL
        },    # key: min: 1, max: 1011
      },    # OPTIONAL
      MustSucceedForCutover => 1,    # OPTIONAL
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
    my $ActionID           = $SourceServerActionDocument->ActionID;
    my $ActionName         = $SourceServerActionDocument->ActionName;
    my $Active             = $SourceServerActionDocument->Active;
    my $Category           = $SourceServerActionDocument->Category;
    my $Description        = $SourceServerActionDocument->Description;
    my $DocumentIdentifier = $SourceServerActionDocument->DocumentIdentifier;
    my $DocumentVersion    = $SourceServerActionDocument->DocumentVersion;
    my $ExternalParameters = $SourceServerActionDocument->ExternalParameters;
    my $MustSucceedForCutover =
      $SourceServerActionDocument->MustSucceedForCutover;
    my $Order          = $SourceServerActionDocument->Order;
    my $Parameters     = $SourceServerActionDocument->Parameters;
    my $TimeoutSeconds = $SourceServerActionDocument->TimeoutSeconds;

   # Returns a L<Paws::ApplicationMigration::SourceServerActionDocument> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/PutSourceServerAction>

=head1 ATTRIBUTES


=head2 AccountID => Str

Source server post migration custom account ID.



=head2 B<REQUIRED> ActionID => Str

Source server post migration custom action ID.



=head2 B<REQUIRED> ActionName => Str

Source server post migration custom action name.



=head2 Active => Bool

Source server post migration custom action active status.



=head2 Category => Str

Source server post migration custom action category.

Valid values are: C<"DISASTER_RECOVERY">, C<"OPERATING_SYSTEM">, C<"LICENSE_AND_SUBSCRIPTION">, C<"VALIDATION">, C<"OBSERVABILITY">, C<"REFACTORING">, C<"SECURITY">, C<"NETWORKING">, C<"CONFIGURATION">, C<"BACKUP">, C<"OTHER">

=head2 Description => Str

Source server post migration custom action description.



=head2 B<REQUIRED> DocumentIdentifier => Str

Source server post migration custom action document identifier.



=head2 DocumentVersion => Str

Source server post migration custom action document version.



=head2 ExternalParameters => L<Paws::ApplicationMigration::SsmDocumentExternalParameters>

Source server post migration custom action external parameters.



=head2 MustSucceedForCutover => Bool

Source server post migration custom action must succeed for cutover.



=head2 B<REQUIRED> Order => Int

Source server post migration custom action order.



=head2 Parameters => L<Paws::ApplicationMigration::SsmDocumentParameters>

Source server post migration custom action parameters.



=head2 B<REQUIRED> SourceServerID => Str

Source server ID.



=head2 TimeoutSeconds => Int

Source server post migration custom action timeout in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSourceServerAction in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

