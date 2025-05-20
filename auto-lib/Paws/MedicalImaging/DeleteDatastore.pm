
package Paws::MedicalImaging::DeleteDatastore;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::DeleteDatastoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::DeleteDatastore - Arguments for method DeleteDatastore on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDatastore on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method DeleteDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDatastore.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $DeleteDatastoreResponse = $medical -imaging->DeleteDatastore(
      DatastoreId => 'MyDatastoreId',

    );

    # Results:
    my $DatastoreId     = $DeleteDatastoreResponse->DatastoreId;
    my $DatastoreStatus = $DeleteDatastoreResponse->DatastoreStatus;

    # Returns a L<Paws::MedicalImaging::DeleteDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/DeleteDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDatastore in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

