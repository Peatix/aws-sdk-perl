
package Paws::MedicalImaging::GetDICOMImportJob;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDICOMImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::GetDICOMImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetDICOMImportJob - Arguments for method GetDICOMImportJob on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDICOMImportJob on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method GetDICOMImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDICOMImportJob.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $GetDICOMImportJobResponse = $medical -imaging->GetDICOMImportJob(
      DatastoreId => 'MyDatastoreId',
      JobId       => 'MyJobId',

    );

    # Results:
    my $JobProperties = $GetDICOMImportJobResponse->JobProperties;

    # Returns a L<Paws::MedicalImaging::GetDICOMImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/GetDICOMImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 B<REQUIRED> JobId => Str

The import job identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDICOMImportJob in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

