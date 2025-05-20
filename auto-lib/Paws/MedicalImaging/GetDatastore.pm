
package Paws::MedicalImaging::GetDatastore;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::GetDatastoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetDatastore - Arguments for method GetDatastore on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDatastore on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method GetDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDatastore.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $GetDatastoreResponse = $medical -imaging->GetDatastore(
      DatastoreId => 'MyDatastoreId',

    );

    # Results:
    my $DatastoreProperties = $GetDatastoreResponse->DatastoreProperties;

    # Returns a L<Paws::MedicalImaging::GetDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/GetDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDatastore in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

