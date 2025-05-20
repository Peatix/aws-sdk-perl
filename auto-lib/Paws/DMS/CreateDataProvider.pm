
package Paws::DMS::CreateDataProvider;
  use Moose;
  has DataProviderName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::DMS::DataProviderSettings', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateDataProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateDataProvider - Arguments for method CreateDataProvider on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataProvider on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateDataProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataProvider.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateDataProviderResponse = $dms->CreateDataProvider(
      Engine   => 'MyString',
      Settings => {
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
      },
      DataProviderName => 'MyString',    # OPTIONAL
      Description      => 'MyString',    # OPTIONAL
      Tags             => [
        {
          Key         => 'MyString',
          ResourceArn => 'MyString',
          Value       => 'MyString',
        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $DataProvider = $CreateDataProviderResponse->DataProvider;

    # Returns a L<Paws::DMS::CreateDataProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateDataProvider>

=head1 ATTRIBUTES


=head2 DataProviderName => Str

A user-friendly name for the data provider.



=head2 Description => Str

A user-friendly description of the data provider.



=head2 B<REQUIRED> Engine => Str

The type of database engine for the data provider. Valid values include
C<"aurora">, C<"aurora-postgresql">, C<"mysql">, C<"oracle">,
C<"postgres">, C<"sqlserver">, C<redshift>, C<mariadb>, C<mongodb>,
C<db2>, C<db2-zos> and C<docdb>. A value of C<"aurora"> represents
Amazon Aurora MySQL-Compatible Edition.



=head2 B<REQUIRED> Settings => L<Paws::DMS::DataProviderSettings>

The settings in JSON format for a data provider.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more tags to be assigned to the data provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataProvider in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

