
package Paws::SupplyChain::CreateBillOfMaterialsImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has S3uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3uri', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBillOfMaterialsImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::CreateBillOfMaterialsImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateBillOfMaterialsImportJob - Arguments for method CreateBillOfMaterialsImportJob on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillOfMaterialsImportJob on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method CreateBillOfMaterialsImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillOfMaterialsImportJob.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $CreateBillOfMaterialsImportJobResponse =
      $scn->CreateBillOfMaterialsImportJob(
      InstanceId  => 'MyUUID',
      S3uri       => 'MyConfigurationS3Uri',
      ClientToken => 'MyClientToken',          # OPTIONAL
      );

    # Results:
    my $JobId = $CreateBillOfMaterialsImportJobResponse->JobId;

# Returns a L<Paws::SupplyChain::CreateBillOfMaterialsImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/CreateBillOfMaterialsImportJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token ensures the API request is only completed no more
than once. This way, retrying the request will not trigger the
operation multiple times. A client token is a unique, case-sensitive
string of 33 to 128 ASCII characters. To make an idempotent API
request, specify a client token in the request. You should not reuse
the same client token for other requests. If you retry a successful
request with the same client token, the request will succeed with no
further actions being taken, and you will receive the same API response
as the original successful request.



=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head2 B<REQUIRED> S3uri => Str

The S3 URI of the CSV file to be imported. The bucket must grant
permissions for AWS Supply Chain to read the file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillOfMaterialsImportJob in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

