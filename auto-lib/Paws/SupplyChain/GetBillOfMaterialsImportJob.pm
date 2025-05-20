
package Paws::SupplyChain::GetBillOfMaterialsImportJob;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBillOfMaterialsImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetBillOfMaterialsImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetBillOfMaterialsImportJob - Arguments for method GetBillOfMaterialsImportJob on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBillOfMaterialsImportJob on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetBillOfMaterialsImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBillOfMaterialsImportJob.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetBillOfMaterialsImportJobResponse = $scn->GetBillOfMaterialsImportJob(
      InstanceId => 'MyUUID',
      JobId      => 'MyUUID',

    );

    # Results:
    my $Job = $GetBillOfMaterialsImportJobResponse->Job;

   # Returns a L<Paws::SupplyChain::GetBillOfMaterialsImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetBillOfMaterialsImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head2 B<REQUIRED> JobId => Str

The BillOfMaterialsImportJob identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBillOfMaterialsImportJob in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

