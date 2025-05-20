
package Paws::RDS::CreateTenantDatabase;
  use Moose;
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has NcharCharacterSetName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TenantDBName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTenantDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateTenantDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTenantDatabaseResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateTenantDatabase - Arguments for method CreateTenantDatabase on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTenantDatabase on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateTenantDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTenantDatabase.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateTenantDatabaseResult = $rds->CreateTenantDatabase(
      DBInstanceIdentifier     => 'MyString',
      MasterUsername           => 'MyString',
      TenantDBName             => 'MyString',
      CharacterSetName         => 'MyString',             # OPTIONAL
      ManageMasterUserPassword => 1,                      # OPTIONAL
      MasterUserPassword       => 'MySensitiveString',    # OPTIONAL
      MasterUserSecretKmsKeyId => 'MyString',             # OPTIONAL
      NcharCharacterSetName    => 'MyString',             # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                  # OPTIONAL
    );

    # Results:
    my $TenantDatabase = $CreateTenantDatabaseResult->TenantDatabase;

    # Returns a L<Paws::RDS::CreateTenantDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateTenantDatabase>

=head1 ATTRIBUTES


=head2 CharacterSetName => Str

The character set for your tenant database. If you don't specify a
value, the character set name defaults to C<AL32UTF8>.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The user-supplied DB instance identifier. RDS creates your tenant
database in this DB instance. This parameter isn't case-sensitive.



=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

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




=head2 B<REQUIRED> MasterUsername => Str

The name for the master user account in your tenant database. RDS
creates this user account in the tenant database and grants privileges
to the master user. This parameter is case-sensitive.

Constraints:

=over

=item *

Must be 1 to 16 letters, numbers, or underscores.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master user in your tenant database.

Constraints:

=over

=item *

Must be 8 to 30 characters.

=item *

Can include any printable ASCII character except forward slash (C</>),
double quote (C<">), at symbol (C<@>), ampersand (C<&>), or single
quote (C<'>).

=item *

Can't be specified when C<ManageMasterUserPassword> is enabled.

=back




=head2 MasterUserSecretKmsKeyId => Str

The Amazon Web Services KMS key identifier to encrypt a secret that is
automatically generated and managed in Amazon Web Services Secrets
Manager.

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB instance.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

If you don't specify C<MasterUserSecretKmsKeyId>, then the
C<aws/secretsmanager> KMS key is used to encrypt the secret. If the
secret is in a different Amazon Web Services account, then you can't
use the C<aws/secretsmanager> KMS key to encrypt the secret, and you
must use a customer managed KMS key.

There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.



=head2 NcharCharacterSetName => Str

The C<NCHAR> value for the tenant database.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TenantDBName => Str

The user-supplied name of the tenant database that you want to create
in your DB instance. This parameter has the same constraints as
C<DBName> in C<CreateDBInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTenantDatabase in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

