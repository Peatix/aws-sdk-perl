
package Paws::CleanRooms::CreateConfiguredTable;
  use Moose;
  has AllowedColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedColumns', required => 1);
  has AnalysisMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisMethod', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SelectedAnalysisMethods => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'selectedAnalysisMethods');
  has TableReference => (is => 'ro', isa => 'Paws::CleanRooms::TableReference', traits => ['NameInRequest'], request_name => 'tableReference', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuredTables');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateConfiguredTableOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredTable - Arguments for method CreateConfiguredTable on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredTable on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateConfiguredTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredTable.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateConfiguredTableOutput = $cleanrooms->CreateConfiguredTable(
      AllowedColumns => [
        'MyColumnName', ...    # max: 128
      ],
      AnalysisMethod => 'DIRECT_QUERY',
      Name           => 'MyDisplayName',
      TableReference => {
        Athena => {
          DatabaseName   => 'MyAthenaDatabaseName',    # max: 128
          TableName      => 'MyAthenaTableName',       # max: 128
          WorkGroup      => 'MyAthenaWorkGroup',       # min: 1, max: 128
          OutputLocation =>
            'MyAthenaOutputLocation',    # min: 8, max: 1024; OPTIONAL
        },    # OPTIONAL
        Glue => {
          DatabaseName => 'MyGlueDatabaseName',    # max: 128
          TableName    => 'MyGlueTableName',       # max: 128

        },    # OPTIONAL
        Snowflake => {
          AccountIdentifier =>
            'MySnowflakeAccountIdentifier',    # min: 3, max: 256
          DatabaseName => 'MySnowflakeDatabaseName',    # min: 1, max: 256
          SchemaName   => 'MySnowflakeSchemaName',      # min: 1, max: 256
          SecretArn    => 'MySecretsManagerArn',        # max: 256
          TableName    => 'MySnowflakeTableName',       # min: 1, max: 256
          TableSchema  => {
            V1 => [
              {
                ColumnName => 'MyColumnName',          # max: 128
                ColumnType => 'MyColumnTypeString',    # max: 255

              },
              ...
            ],    # min: 1, max: 250; OPTIONAL
          },

        },    # OPTIONAL
      },
      Description             => 'MyTableDescription',    # OPTIONAL
      SelectedAnalysisMethods => [
        'DIRECT_QUERY', ...    # values: DIRECT_QUERY, DIRECT_JOB
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ConfiguredTable = $CreateConfiguredTableOutput->ConfiguredTable;

    # Returns a L<Paws::CleanRooms::CreateConfiguredTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateConfiguredTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedColumns => ArrayRef[Str|Undef]

The columns of the underlying table that can be used by collaborations
or analysis rules.



=head2 B<REQUIRED> AnalysisMethod => Str

The analysis method allowed for the configured tables.

C<DIRECT_QUERY> allows SQL queries to be run directly on this table.

C<DIRECT_JOB> allows PySpark jobs to be run directly on this table.

C<MULTIPLE> allows both SQL queries and PySpark jobs to be run directly
on this table.

Valid values are: C<"DIRECT_QUERY">, C<"DIRECT_JOB">, C<"MULTIPLE">

=head2 Description => Str

A description for the configured table.



=head2 B<REQUIRED> Name => Str

The name of the configured table.



=head2 SelectedAnalysisMethods => ArrayRef[Str|Undef]

The analysis methods to enable for the configured table. When
configured, you must specify at least two analysis methods.



=head2 B<REQUIRED> TableReference => L<Paws::CleanRooms::TableReference>

A reference to the table being configured.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredTable in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

