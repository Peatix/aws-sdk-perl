
package Paws::S3Tables::GetTableMetadataLocation;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableMetadataLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}/{namespace}/{name}/metadata-location');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::GetTableMetadataLocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableMetadataLocation - Arguments for method GetTableMetadataLocation on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableMetadataLocation on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method GetTableMetadataLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableMetadataLocation.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $GetTableMetadataLocationResponse = $s3tables->GetTableMetadataLocation(
      Name           => 'MyTableName',
      Namespace      => 'MyNamespaceName',
      TableBucketARN => 'MyTableBucketARN',

    );

    # Results:
    my $MetadataLocation = $GetTableMetadataLocationResponse->MetadataLocation;
    my $VersionToken     = $GetTableMetadataLocationResponse->VersionToken;
    my $WarehouseLocation =
      $GetTableMetadataLocationResponse->WarehouseLocation;

    # Returns a L<Paws::S3Tables::GetTableMetadataLocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/GetTableMetadataLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the table.



=head2 B<REQUIRED> Namespace => Str

The namespace of the table.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableMetadataLocation in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

