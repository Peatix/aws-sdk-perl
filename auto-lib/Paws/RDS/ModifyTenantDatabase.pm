
package Paws::RDS::ModifyTenantDatabase;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has NewTenantDBName => (is => 'ro', isa => 'Str');
  has RotateMasterUserPassword => (is => 'ro', isa => 'Bool');
  has TenantDBName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTenantDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyTenantDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyTenantDatabaseResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyTenantDatabase - Arguments for method ModifyTenantDatabase on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTenantDatabase on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyTenantDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTenantDatabase.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyTenantDatabaseResult = $rds->ModifyTenantDatabase(
      DBInstanceIdentifier     => 'MyString',
      TenantDBName             => 'MyString',
      ManageMasterUserPassword => 1,                      # OPTIONAL
      MasterUserPassword       => 'MySensitiveString',    # OPTIONAL
      MasterUserSecretKmsKeyId => 'MyString',             # OPTIONAL
      NewTenantDBName          => 'MyString',             # OPTIONAL
      RotateMasterUserPassword => 1,                      # OPTIONAL
    );

    # Results:
    my $TenantDatabase = $ModifyTenantDatabaseResult->TenantDatabase;

    # Returns a L<Paws::RDS::ModifyTenantDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyTenantDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The identifier of the DB instance that contains the tenant database
that you are modifying. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing DB instance.

=back




=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

If the tenant database doesn't manage the master user password with
Amazon Web Services Secrets Manager, you can turn on this management.
In this case, you can't specify C<MasterUserPassword>.

If the tenant database already manages the master user password with
Amazon Web Services Secrets Manager, and you specify that the master
user password is not managed with Amazon Web Services Secrets Manager,
then you must specify C<MasterUserPassword>. In this case, Amazon RDS
deletes the secret and uses the new password for the master user
specified by C<MasterUserPassword>.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Can't manage the master user password with Amazon Web Services Secrets
Manager if C<MasterUserPassword> is specified.

=back




=head2 MasterUserPassword => Str

The new password for the master user of the specified tenant database
in your DB instance.

Amazon RDS operations never return the password, so this action
provides a way to regain access to a tenant database user if the
password is lost. This includes restoring privileges that might have
been accidentally revoked.

Constraints:

=over

=item *

Can include any printable ASCII character except C</>, C<"> (double
quote), C<@>, C<&> (ampersand), and C<'> (single quote).

=back

Length constraints:

=over

=item *

Must contain between 8 and 30 characters.

=back




=head2 MasterUserSecretKmsKeyId => Str

The Amazon Web Services KMS key identifier to encrypt a secret that is
automatically generated and managed in Amazon Web Services Secrets
Manager.

This setting is valid only if both of the following conditions are met:

=over

=item *

The tenant database doesn't manage the master user password in Amazon
Web Services Secrets Manager.

If the tenant database already manages the master user password in
Amazon Web Services Secrets Manager, you can't change the KMS key used
to encrypt the secret.

=item *

You're turning on C<ManageMasterUserPassword> to manage the master user
password in Amazon Web Services Secrets Manager.

If you're turning on C<ManageMasterUserPassword> and don't specify
C<MasterUserSecretKmsKeyId>, then the C<aws/secretsmanager> KMS key is
used to encrypt the secret. If the secret is in a different Amazon Web
Services account, then you can't use the C<aws/secretsmanager> KMS key
to encrypt the secret, and you must use a self-managed KMS key.

=back

The Amazon Web Services KMS key identifier is any of the following:

=over

=item *

Key ARN

=item *

Key ID

=item *

Alias ARN

=item *

Alias name for the KMS key

=back

To use a KMS key in a different Amazon Web Services account, specify
the key ARN or alias ARN.

A default KMS key exists for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.



=head2 NewTenantDBName => Str

The new name of the tenant database when renaming a tenant database.
This parameter isnE<rsquo>t case-sensitive.

Constraints:

=over

=item *

Can't be the string null or any other reserved word.

=item *

Can't be longer than 8 characters.

=back




=head2 RotateMasterUserPassword => Bool

Specifies whether to rotate the secret managed by Amazon Web Services
Secrets Manager for the master user password.

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB instance. The
secret value contains the updated password.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

You must apply the change immediately when rotating the master user
password.

=back




=head2 B<REQUIRED> TenantDBName => Str

The user-supplied name of the tenant database that you want to modify.
This parameter isnE<rsquo>t case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing tenant database.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTenantDatabase in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

