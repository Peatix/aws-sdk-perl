
package Paws::RedshiftData::ExecuteStatement;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Database => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftData::SqlParameter]');
  has ResultFormat => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has SessionId => (is => 'ro', isa => 'Str');
  has SessionKeepAliveSeconds => (is => 'ro', isa => 'Int');
  has Sql => (is => 'ro', isa => 'Str', required => 1);
  has StatementName => (is => 'ro', isa => 'Str');
  has WithEvent => (is => 'ro', isa => 'Bool');
  has WorkgroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ExecuteStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ExecuteStatement - Arguments for method ExecuteStatement on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteStatement on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ExecuteStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteStatement.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ExecuteStatementOutput = $redshift -data->ExecuteStatement(
      Sql               => 'MyStatementString',
      ClientToken       => 'MyClientToken',                # OPTIONAL
      ClusterIdentifier => 'MyClusterIdentifierString',    # OPTIONAL
      Database          => 'MyString',                     # OPTIONAL
      DbUser            => 'MyString',                     # OPTIONAL
      Parameters        => [
        {
          Name  => 'MyParameterName',
          Value => 'MyParameterValue',                     # min: 1

        },
        ...
      ],    # OPTIONAL
      ResultFormat            => 'JSON',                     # OPTIONAL
      SecretArn               => 'MySecretArn',              # OPTIONAL
      SessionId               => 'MyUUID',                   # OPTIONAL
      SessionKeepAliveSeconds => 1,                          # OPTIONAL
      StatementName           => 'MyStatementNameString',    # OPTIONAL
      WithEvent               => 1,                          # OPTIONAL
      WorkgroupName           => 'MyWorkgroupNameString',    # OPTIONAL
    );

    # Results:
    my $ClusterIdentifier = $ExecuteStatementOutput->ClusterIdentifier;
    my $CreatedAt         = $ExecuteStatementOutput->CreatedAt;
    my $Database          = $ExecuteStatementOutput->Database;
    my $DbGroups          = $ExecuteStatementOutput->DbGroups;
    my $DbUser            = $ExecuteStatementOutput->DbUser;
    my $Id                = $ExecuteStatementOutput->Id;
    my $SecretArn         = $ExecuteStatementOutput->SecretArn;
    my $SessionId         = $ExecuteStatementOutput->SessionId;
    my $WorkgroupName     = $ExecuteStatementOutput->WorkgroupName;

    # Returns a L<Paws::RedshiftData::ExecuteStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ExecuteStatement>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 ClusterIdentifier => Str

The cluster identifier. This parameter is required when connecting to a
cluster and authenticating using either Secrets Manager or temporary
credentials.



=head2 Database => Str

The name of the database. This parameter is required when
authenticating using either Secrets Manager or temporary credentials.



=head2 DbUser => Str

The database user name. This parameter is required when connecting to a
cluster as a database user and authenticating using temporary
credentials.



=head2 Parameters => ArrayRef[L<Paws::RedshiftData::SqlParameter>]

The parameters for the SQL statement.



=head2 ResultFormat => Str

The data format of the result of the SQL statement. If no format is
specified, the default is JSON.

Valid values are: C<"JSON">, C<"CSV">

=head2 SecretArn => Str

The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using Secrets Manager.



=head2 SessionId => Str

The session identifier of the query.



=head2 SessionKeepAliveSeconds => Int

The number of seconds to keep the session alive after the query
finishes. The maximum time a session can keep alive is 24 hours. After
24 hours, the session is forced closed and the query is terminated.



=head2 B<REQUIRED> Sql => Str

The SQL statement text to run.



=head2 StatementName => Str

The name of the SQL statement. You can name the SQL statement when you
create it to identify the query.



=head2 WithEvent => Bool

A value that indicates whether to send an event to the Amazon
EventBridge event bus after the SQL statement runs.



=head2 WorkgroupName => Str

The serverless workgroup name or Amazon Resource Name (ARN). This
parameter is required when connecting to a serverless workgroup and
authenticating using either Secrets Manager or temporary credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteStatement in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

