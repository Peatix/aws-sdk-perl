
package Paws::RedshiftData::ListSchemas;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ConnectedDatabase => (is => 'ro', isa => 'Str');
  has Database => (is => 'ro', isa => 'Str', required => 1);
  has DbUser => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaPattern => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has WorkgroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemas');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ListSchemasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ListSchemas - Arguments for method ListSchemas on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemas on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ListSchemas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemas.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ListSchemasResponse = $redshift -data->ListSchemas(
      Database          => 'MyString',
      ClusterIdentifier => 'MyClusterIdentifierString',    # OPTIONAL
      ConnectedDatabase => 'MyString',                     # OPTIONAL
      DbUser            => 'MyString',                     # OPTIONAL
      MaxResults        => 1,                              # OPTIONAL
      NextToken         => 'MyString',                     # OPTIONAL
      SchemaPattern     => 'MyString',                     # OPTIONAL
      SecretArn         => 'MySecretArn',                  # OPTIONAL
      WorkgroupName     => 'MyWorkgroupNameString',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchemasResponse->NextToken;
    my $Schemas   = $ListSchemasResponse->Schemas;

    # Returns a L<Paws::RedshiftData::ListSchemasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ListSchemas>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The cluster identifier. This parameter is required when connecting to a
cluster and authenticating using either Secrets Manager or temporary
credentials.



=head2 ConnectedDatabase => Str

A database name. The connected database is specified when you connect
with your authentication credentials.



=head2 B<REQUIRED> Database => Str

The name of the database that contains the schemas to list. If
C<ConnectedDatabase> is not specified, this is also the database to
connect to with your authentication credentials.



=head2 DbUser => Str

The database user name. This parameter is required when connecting to a
cluster as a database user and authenticating using temporary
credentials.



=head2 MaxResults => Int

The maximum number of schemas to return in the response. If more
schemas exist than fit in one response, then C<NextToken> is returned
to page through the results.



=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.



=head2 SchemaPattern => Str

A pattern to filter results by schema name. Within a schema pattern,
"%" means match any substring of 0 or more characters and "_" means
match any one character. Only schema name entries matching the search
pattern are returned.



=head2 SecretArn => Str

The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using Secrets Manager.



=head2 WorkgroupName => Str

The serverless workgroup name or Amazon Resource Name (ARN). This
parameter is required when connecting to a serverless workgroup and
authenticating using either Secrets Manager or temporary credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemas in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

