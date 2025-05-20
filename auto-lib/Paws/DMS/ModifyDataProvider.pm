
package Paws::DMS::ModifyDataProvider;
  use Moose;
  has DataProviderIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DataProviderName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has ExactSettings => (is => 'ro', isa => 'Bool');
  has Settings => (is => 'ro', isa => 'Paws::DMS::DataProviderSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDataProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyDataProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyDataProvider - Arguments for method ModifyDataProvider on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDataProvider on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyDataProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDataProvider.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyDataProviderResponse = $dms->ModifyDataProvider(
      DataProviderIdentifier => 'MyString',
      DataProviderName       => 'MyString',    # OPTIONAL
      Description            => 'MyString',    # OPTIONAL
      Engine                 => 'MyString',    # OPTIONAL
      ExactSettings          => 1,             # OPTIONAL
      Settings               => {
        DocDbSettings => {
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        IbmDb2LuwSettings => {
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        IbmDb2zOsSettings => {
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        MariaDbSettings => {
          CertificateArn => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        MicrosoftSqlServerSettings => {
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        MongoDbSettings => {
          AuthMechanism =>
            'default',    # values: default, mongodb_cr, scram_sha_1; OPTIONAL
          AuthSource     => 'MyString',
          AuthType       => 'no',         # values: no, password; OPTIONAL
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        MySqlSettings => {
          CertificateArn => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        OracleSettings => {
          AsmServer                            => 'MyString',
          CertificateArn                       => 'MyString',
          DatabaseName                         => 'MyString',
          Port                                 => 1,            # OPTIONAL
          SecretsManagerOracleAsmAccessRoleArn => 'MyString',
          SecretsManagerOracleAsmSecretId      => 'MyString',
          SecretsManagerSecurityDbEncryptionAccessRoleArn => 'MyString',
          SecretsManagerSecurityDbEncryptionSecretId      => 'MyString',
          ServerName                                      => 'MyString',
          SslMode                                         =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        PostgreSqlSettings => {
          CertificateArn => 'MyString',
          DatabaseName   => 'MyString',
          Port           => 1,            # OPTIONAL
          ServerName     => 'MyString',
          SslMode        =>
            'none',    # values: none, require, verify-ca, verify-full; OPTIONAL
        },    # OPTIONAL
        RedshiftSettings => {
          DatabaseName => 'MyString',
          Port         => 1,            # OPTIONAL
          ServerName   => 'MyString',
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DataProvider = $ModifyDataProviderResponse->DataProvider;

    # Returns a L<Paws::DMS::ModifyDataProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyDataProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataProviderIdentifier => Str

The identifier of the data provider. Identifiers must begin with a
letter and must contain only ASCII letters, digits, and hyphens. They
can't end with a hyphen, or contain two consecutive hyphens.



=head2 DataProviderName => Str

The name of the data provider.



=head2 Description => Str

A user-friendly description of the data provider.



=head2 Engine => Str

The type of database engine for the data provider. Valid values include
C<"aurora">, C<"aurora-postgresql">, C<"mysql">, C<"oracle">,
C<"postgres">, C<"sqlserver">, C<redshift>, C<mariadb>, C<mongodb>,
C<db2>, C<db2-zos> and C<docdb>. A value of C<"aurora"> represents
Amazon Aurora MySQL-Compatible Edition.



=head2 ExactSettings => Bool

If this attribute is Y, the current call to C<ModifyDataProvider>
replaces all existing data provider settings with the exact settings
that you specify in this call. If this attribute is N, the current call
to C<ModifyDataProvider> does two things:

=over

=item *

It replaces any data provider settings that already exist with new
values, for settings with the same names.

=item *

It creates new data provider settings that you specify in the call, for
settings with different names.

=back




=head2 Settings => L<Paws::DMS::DataProviderSettings>

The settings in JSON format for a data provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDataProvider in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

