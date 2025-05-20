
package Paws::Glue::GetUnfilteredPartitionsMetadata;
  use Moose;
  has AuditContext => (is => 'ro', isa => 'Paws::Glue::AuditContext');
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QuerySessionContext => (is => 'ro', isa => 'Paws::Glue::QuerySessionContext');
  has Region => (is => 'ro', isa => 'Str');
  has Segment => (is => 'ro', isa => 'Paws::Glue::Segment');
  has SupportedPermissionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUnfilteredPartitionsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetUnfilteredPartitionsMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUnfilteredPartitionsMetadata - Arguments for method GetUnfilteredPartitionsMetadata on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUnfilteredPartitionsMetadata on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetUnfilteredPartitionsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUnfilteredPartitionsMetadata.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetUnfilteredPartitionsMetadataResponse =
      $glue->GetUnfilteredPartitionsMetadata(
      CatalogId                => 'MyCatalogIdString',
      DatabaseName             => 'MyNameString',
      SupportedPermissionTypes => [
        'COLUMN_PERMISSION',
        ... # values: COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
      ],
      TableName    => 'MyNameString',
      AuditContext => {
        AdditionalAuditContext => 'MyAuditContextString',  # max: 2048; OPTIONAL
        AllColumnsRequested    => 1,                       # OPTIONAL
        RequestedColumns       => [
          'MyColumnNameString', ...                        # min: 1, max: 1024
        ],    # OPTIONAL
      },    # OPTIONAL
      Expression          => 'MyPredicateString',    # OPTIONAL
      MaxResults          => 1,                      # OPTIONAL
      NextToken           => 'MyToken',              # OPTIONAL
      QuerySessionContext => {
        AdditionalContext => {
          'MyContextKey' =>
            'MyContextValue',    # key: min: 1, max: 128, value: max: 256
        },    # OPTIONAL
        ClusterId            => 'MyNullableString', # OPTIONAL
        QueryAuthorizationId => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryId              => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryStartTime       => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      Region  => 'MyValueString',    # OPTIONAL
      Segment => {
        SegmentNumber => 1,
        TotalSegments => 1,          # min: 1, max: 10

      },    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetUnfilteredPartitionsMetadataResponse->NextToken;
    my $UnfilteredPartitions =
      $GetUnfilteredPartitionsMetadataResponse->UnfilteredPartitions;

    # Returns a L<Paws::Glue::GetUnfilteredPartitionsMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetUnfilteredPartitionsMetadata>

=head1 ATTRIBUTES


=head2 AuditContext => L<Paws::Glue::AuditContext>

A structure containing Lake Formation audit context information.



=head2 B<REQUIRED> CatalogId => Str

The ID of the Data Catalog where the partitions in question reside. If
none is provided, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partitions reside.



=head2 Expression => Str

An expression that filters the partitions to be returned.

The expression uses SQL syntax similar to the SQL C<WHERE> filter
clause. The SQL statement parser JSQLParser
(http://jsqlparser.sourceforge.net/home.php) parses the expression.

I<Operators>: The following are the operators that you can use in the
C<Expression> API call:

=over

=item E<61>

Checks whether the values of the two operands are equal; if yes, then
the condition becomes true.

Example: Assume 'variable a' holds 10 and 'variable b' holds 20.

(a = b) is not true.

=item E<lt> E<gt>

Checks whether the values of two operands are equal; if the values are
not equal, then the condition becomes true.

Example: (a E<lt> E<gt> b) is true.

=item E<gt>

Checks whether the value of the left operand is greater than the value
of the right operand; if yes, then the condition becomes true.

Example: (a E<gt> b) is not true.

=item E<lt>

Checks whether the value of the left operand is less than the value of
the right operand; if yes, then the condition becomes true.

Example: (a E<lt> b) is true.

=item E<gt>=

Checks whether the value of the left operand is greater than or equal
to the value of the right operand; if yes, then the condition becomes
true.

Example: (a E<gt>= b) is not true.

=item E<lt>=

Checks whether the value of the left operand is less than or equal to
the value of the right operand; if yes, then the condition becomes
true.

Example: (a E<lt>= b) is true.

=item AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL

Logical operators.

=back

I<Supported Partition Key Types>: The following are the supported
partition keys.

=over

=item *

C<string>

=item *

C<date>

=item *

C<timestamp>

=item *

C<int>

=item *

C<bigint>

=item *

C<long>

=item *

C<tinyint>

=item *

C<smallint>

=item *

C<decimal>

=back

If an type is encountered that is not valid, an exception is thrown.



=head2 MaxResults => Int

The maximum number of partitions to return in a single response.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
partitions.



=head2 QuerySessionContext => L<Paws::Glue::QuerySessionContext>

A structure used as a protocol between query engines and Lake Formation
or Glue. Contains both a Lake Formation generated authorization
identifier and information from the request's authorization context.



=head2 Region => Str

Specified only if the base tables belong to a different Amazon Web
Services Region.



=head2 Segment => L<Paws::Glue::Segment>

The segment of the table's partitions to scan in this request.



=head2 B<REQUIRED> SupportedPermissionTypes => ArrayRef[Str|Undef]

A list of supported permission types.



=head2 B<REQUIRED> TableName => Str

The name of the table that contains the partition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUnfilteredPartitionsMetadata in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

