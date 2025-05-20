
package Paws::RDS::CreateDBProxy;
  use Moose;
  has Auth => (is => 'ro', isa => 'ArrayRef[Paws::RDS::UserAuthConfig]', required => 1);
  has DBProxyName => (is => 'ro', isa => 'Str', required => 1);
  has DebugLogging => (is => 'ro', isa => 'Bool');
  has EngineFamily => (is => 'ro', isa => 'Str', required => 1);
  has IdleClientTimeout => (is => 'ro', isa => 'Int');
  has RequireTLS => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBProxy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBProxyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBProxyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBProxy - Arguments for method CreateDBProxy on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBProxy on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBProxy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBProxy.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateDBProxyResponse = $rds->CreateDBProxy(
      Auth => [
        {
          AuthScheme             => 'SECRETS',    # values: SECRETS; OPTIONAL
          ClientPasswordAuthType => 'MYSQL_NATIVE_PASSWORD'
          , # values: MYSQL_NATIVE_PASSWORD, MYSQL_CACHING_SHA2_PASSWORD, POSTGRES_SCRAM_SHA_256, POSTGRES_MD5, SQL_SERVER_AUTHENTICATION; OPTIONAL
          Description => 'MyString',    # OPTIONAL
          IAMAuth => 'DISABLED', # values: DISABLED, REQUIRED, ENABLED; OPTIONAL
          SecretArn => 'MyString',    # OPTIONAL
          UserName  => 'MyString',    # OPTIONAL
        },
        ...
      ],
      DBProxyName  => 'MyString',
      EngineFamily => 'MYSQL',
      RoleArn      => 'MyString',
      VpcSubnetIds => [
        'MyString',
        ...    # OPTIONAL
      ],
      DebugLogging      => 1,    # OPTIONAL
      IdleClientTimeout => 1,    # OPTIONAL
      RequireTLS        => 1,    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VpcSecurityGroupIds => [
        'MyString', ...    # OPTIONAL
      ],    # OPTIONAL
    );

    # Results:
    my $DBProxy = $CreateDBProxyResponse->DBProxy;

    # Returns a L<Paws::RDS::CreateDBProxyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBProxy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Auth => ArrayRef[L<Paws::RDS::UserAuthConfig>]

The authorization mechanism that the proxy uses.



=head2 B<REQUIRED> DBProxyName => Str

The identifier for the proxy. This name must be unique for all proxies
owned by your Amazon Web Services account in the specified Amazon Web
Services Region. An identifier must begin with a letter and must
contain only ASCII letters, digits, and hyphens; it can't end with a
hyphen or contain two consecutive hyphens.



=head2 DebugLogging => Bool

Specifies whether the proxy includes detailed information about SQL
statements in its logs. This information helps you to debug issues
involving SQL behavior or the performance and scalability of the proxy
connections. The debug information includes the text of SQL statements
that you submit through the proxy. Thus, only enable this setting when
needed for debugging, and only when you have security measures in place
to safeguard any sensitive information that appears in the logs.



=head2 B<REQUIRED> EngineFamily => Str

The kinds of databases that the proxy can connect to. This value
determines which database network protocol the proxy recognizes when it
interprets network traffic to and from the database. For Aurora MySQL,
RDS for MariaDB, and RDS for MySQL databases, specify C<MYSQL>. For
Aurora PostgreSQL and RDS for PostgreSQL databases, specify
C<POSTGRESQL>. For RDS for Microsoft SQL Server, specify C<SQLSERVER>.

Valid values are: C<"MYSQL">, C<"POSTGRESQL">, C<"SQLSERVER">

=head2 IdleClientTimeout => Int

The number of seconds that a connection to the proxy can be inactive
before the proxy disconnects it. You can set this value higher or lower
than the connection timeout limit for the associated database.



=head2 RequireTLS => Bool

Specifies whether Transport Layer Security (TLS) encryption is required
for connections to the proxy. By enabling this setting, you can enforce
encrypted TLS connections to the proxy.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that the proxy uses to
access secrets in Amazon Web Services Secrets Manager.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

An optional set of key-value pairs to associate arbitrary data of your
choosing with the proxy.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

One or more VPC security group IDs to associate with the new proxy.



=head2 B<REQUIRED> VpcSubnetIds => ArrayRef[Str|Undef]

One or more VPC subnet IDs to associate with the new proxy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBProxy in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

