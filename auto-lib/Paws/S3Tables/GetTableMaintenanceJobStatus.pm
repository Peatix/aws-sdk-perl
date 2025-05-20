
package Paws::S3Tables::GetTableMaintenanceJobStatus;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableMaintenanceJobStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::GetTableMaintenanceJobStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableMaintenanceJobStatus - Arguments for method GetTableMaintenanceJobStatus on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableMaintenanceJobStatus on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method GetTableMaintenanceJobStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableMaintenanceJobStatus.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $GetTableMaintenanceJobStatusResponse =
      $s3tables->GetTableMaintenanceJobStatus(
      Name           => 'MyTableName',
      Namespace      => 'MyNamespaceName',
      TableBucketARN => 'MyTableBucketARN',

      );

    # Results:
    my $Status   = $GetTableMaintenanceJobStatusResponse->Status;
    my $TableARN = $GetTableMaintenanceJobStatusResponse->TableARN;

    # Returns a L<Paws::S3Tables::GetTableMaintenanceJobStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/GetTableMaintenanceJobStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the maintenance job.



=head2 B<REQUIRED> Namespace => Str

The name of the namespace the table is associated with.

 </p>



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableMaintenanceJobStatus in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

