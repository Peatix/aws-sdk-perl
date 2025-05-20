
package Paws::SsmSap::UpdateApplicationSettings;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Backint => (is => 'ro', isa => 'Paws::SsmSap::BackintConfig');
  has CredentialsToAddOrUpdate => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ApplicationCredential]');
  has CredentialsToRemove => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ApplicationCredential]');
  has DatabaseArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-application-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::UpdateApplicationSettingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::UpdateApplicationSettings - Arguments for method UpdateApplicationSettings on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationSettings on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method UpdateApplicationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationSettings.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $UpdateApplicationSettingsOutput = $ssm -sap->UpdateApplicationSettings(
      ApplicationId => 'MyApplicationId',
      Backint       => {
        BackintMode             => 'AWSBackup',    # values: AWSBackup
        EnsureNoBackupInProcess => 1,

      },    # OPTIONAL
      CredentialsToAddOrUpdate => [
        {
          CredentialType => 'ADMIN',             # values: ADMIN
          DatabaseName   => 'MyDatabaseName',    # min: 1, max: 100
          SecretId       => 'MySecretId',        # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      CredentialsToRemove => [
        {
          CredentialType => 'ADMIN',             # values: ADMIN
          DatabaseName   => 'MyDatabaseName',    # min: 1, max: 100
          SecretId       => 'MySecretId',        # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      DatabaseArn => 'MySsmSapArn',    # OPTIONAL
    );

    # Results:
    my $Message      = $UpdateApplicationSettingsOutput->Message;
    my $OperationIds = $UpdateApplicationSettingsOutput->OperationIds;

    # Returns a L<Paws::SsmSap::UpdateApplicationSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/UpdateApplicationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application.



=head2 Backint => L<Paws::SsmSap::BackintConfig>

Installation of AWS Backint Agent for SAP HANA.



=head2 CredentialsToAddOrUpdate => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]

The credentials to be added or updated.



=head2 CredentialsToRemove => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]

The credentials to be removed.



=head2 DatabaseArn => Str

The Amazon Resource Name of the SAP HANA database that replaces the
current SAP HANA connection with the SAP_ABAP application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationSettings in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

