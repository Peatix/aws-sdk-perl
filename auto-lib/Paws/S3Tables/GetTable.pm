
package Paws::S3Tables::GetTable;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}/{namespace}/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::GetTableResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTable - Arguments for method GetTable on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTable on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method GetTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTable.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $GetTableResponse = $s3tables->GetTable(
      Name           => 'MyTableName',
      Namespace      => 'MyNamespaceName',
      TableBucketARN => 'MyTableBucketARN',

    );

    # Results:
    my $CreatedAt         = $GetTableResponse->CreatedAt;
    my $CreatedBy         = $GetTableResponse->CreatedBy;
    my $Format            = $GetTableResponse->Format;
    my $ManagedByService  = $GetTableResponse->ManagedByService;
    my $MetadataLocation  = $GetTableResponse->MetadataLocation;
    my $ModifiedAt        = $GetTableResponse->ModifiedAt;
    my $ModifiedBy        = $GetTableResponse->ModifiedBy;
    my $Name              = $GetTableResponse->Name;
    my $Namespace         = $GetTableResponse->Namespace;
    my $NamespaceId       = $GetTableResponse->NamespaceId;
    my $OwnerAccountId    = $GetTableResponse->OwnerAccountId;
    my $TableARN          = $GetTableResponse->TableARN;
    my $TableBucketId     = $GetTableResponse->TableBucketId;
    my $Type              = $GetTableResponse->Type;
    my $VersionToken      = $GetTableResponse->VersionToken;
    my $WarehouseLocation = $GetTableResponse->WarehouseLocation;

    # Returns a L<Paws::S3Tables::GetTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/GetTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the table.



=head2 B<REQUIRED> Namespace => Str

The name of the namespace the table is associated with.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket associated with the
table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTable in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

