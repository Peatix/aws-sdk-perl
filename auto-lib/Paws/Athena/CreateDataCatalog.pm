
package Paws::Athena::CreateDataCatalog;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Athena::ParametersMap');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreateDataCatalogOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateDataCatalog - Arguments for method CreateDataCatalog on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataCatalog on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateDataCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataCatalog.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateDataCatalogOutput = $athena->CreateDataCatalog(
      Name        => 'MyCatalogNameString',
      Type        => 'LAMBDA',
      Description => 'MyDescriptionString',    # OPTIONAL
      Parameters  => {
        'MyKeyString' =>
          'MyParametersMapValue',    # key: min: 1, max: 255, value: max: 51200
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataCatalog = $CreateDataCatalogOutput->DataCatalog;

    # Returns a L<Paws::Athena::CreateDataCatalogOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateDataCatalog>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the data catalog to be created.



=head2 B<REQUIRED> Name => Str

The name of the data catalog to create. The catalog name must be unique
for the Amazon Web Services account and can use a maximum of 127
alphanumeric, underscore, at sign, or hyphen characters. The remainder
of the length constraint of 256 is reserved for use by Athena.

For C<FEDERATED> type the catalog name has following considerations and
limits:

=over

=item *

The catalog name allows special characters such as C<_ , @ , \ , - >.
These characters are replaced with a hyphen (-) when creating the CFN
Stack Name and with an underscore (_) when creating the Lambda Function
and Glue Connection Name.

=item *

The catalog name has a theoretical limit of 128 characters. However,
since we use it to create other resources that allow less characters
and we prepend a prefix to it, the actual catalog name limit for
C<FEDERATED> catalog is 64 - 23 = 41 characters.

=back




=head2 Parameters => L<Paws::Athena::ParametersMap>

Specifies the Lambda function or functions to use for creating the data
catalog. This is a mapping whose values depend on the catalog type.

=over

=item *

For the C<HIVE> data catalog type, use the following syntax. The
C<metadata-function> parameter is required. C<The sdk-version>
parameter is optional and defaults to the currently supported version.

C<metadata-function=I<lambda_arn>, sdk-version=I<version_number>>

=item *

For the C<LAMBDA> data catalog type, use one of the following sets of
required parameters, but not both.

=over

=item *

If you have one Lambda function that processes metadata and another for
reading the actual data, use the following syntax. Both parameters are
required.

C<metadata-function=I<lambda_arn>, record-function=I<lambda_arn>>

=item *

If you have a composite Lambda function that processes both metadata
and data, use the following syntax to specify your Lambda function.

C<function=I<lambda_arn>>

=back

=item *

The C<GLUE> type takes a catalog ID parameter and is required. The C<
I<catalog_id> > is the account ID of the Amazon Web Services account to
which the Glue Data Catalog belongs.

C<catalog-id=I<catalog_id>>

=over

=item *

The C<GLUE> data catalog type also applies to the default
C<AwsDataCatalog> that already exists in your account, of which you can
have only one and cannot modify.

=back

=item *

The C<FEDERATED> data catalog type uses one of the following
parameters, but not both. Use C<connection-arn> for an existing Glue
connection. Use C<connection-type> and C<connection-properties> to
specify the configuration setting for a new connection.

=over

=item *

C<connection-arn:I<E<lt>glue_connection_arn_to_reuseE<gt>>>

=item *

C<lambda-role-arn> (optional): The execution role to use for the Lambda
function. If not provided, one is created.

=item *

C<connection-type:MYSQL|REDSHIFT|....,
connection-properties:"I<E<lt>json_stringE<gt>>">

For I< C<E<lt>json_stringE<gt>> >, use escaped JSON text, as in the
following example.

C<"{\"spill_bucket\":\"my_spill\",\"spill_prefix\":\"athena-spill\",\"host\":\"abc12345.snowflakecomputing.com\",\"port\":\"1234\",\"warehouse\":\"DEV_WH\",\"database\":\"TEST\",\"schema\":\"PUBLIC\",\"SecretArn\":\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\"}">

=back

=back




=head2 Tags => ArrayRef[L<Paws::Athena::Tag>]

A list of comma separated tags to add to the data catalog that is
created. All the resources that are created by the C<CreateDataCatalog>
API operation with C<FEDERATED> type will have the tag
C<federated_athena_datacatalog="true">. This includes the CFN Stack,
Glue Connection, Athena DataCatalog, and all the resources created as
part of the CFN Stack (Lambda Function, IAM policies/roles).



=head2 B<REQUIRED> Type => Str

The type of data catalog to create: C<LAMBDA> for a federated catalog,
C<GLUE> for an Glue Data Catalog, and C<HIVE> for an external Apache
Hive metastore. C<FEDERATED> is a federated catalog for which Athena
creates the connection and the Lambda function for you based on the
parameters that you pass.

For C<FEDERATED> type, we do not support IAM identity center.

Valid values are: C<"LAMBDA">, C<"GLUE">, C<"HIVE">, C<"FEDERATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataCatalog in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

