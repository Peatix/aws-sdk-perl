
package Paws::BCMDataExports::GetTable;
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TableProperties => (is => 'ro', isa => 'Paws::BCMDataExports::TableProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::GetTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::GetTable - Arguments for method GetTable on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTable on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method GetTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTable.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $GetTableResponse = $bcm -data-exports->GetTable(
      TableName       => 'MyTableName',
      TableProperties => {
        'MyTableProperty' =>
          'MyGenericString',    # key: max: 1024, value: max: 1024
      },    # OPTIONAL
    );

    # Results:
    my $Description     = $GetTableResponse->Description;
    my $Schema          = $GetTableResponse->Schema;
    my $TableName       = $GetTableResponse->TableName;
    my $TableProperties = $GetTableResponse->TableProperties;

    # Returns a L<Paws::BCMDataExports::GetTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/GetTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableName => Str

The name of the table.



=head2 TableProperties => L<Paws::BCMDataExports::TableProperties>

TableProperties are additional configurations you can provide to change
the data and schema of a table. Each table can have different
TableProperties. Tables are not required to have any TableProperties.
Each table property has a default value that it assumes if not
specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTable in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

