
package Paws::MedicalImaging::CreateDatastore;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DatastoreName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreName');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Tags => (is => 'ro', isa => 'Paws::MedicalImaging::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::CreateDatastoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::CreateDatastore - Arguments for method CreateDatastore on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatastore on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method CreateDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatastore.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $CreateDatastoreResponse = $medical -imaging->CreateDatastore(
      ClientToken   => 'MyClientToken',
      DatastoreName => 'MyDatastoreName',    # OPTIONAL
      KmsKeyArn     => 'MyKmsKeyArn',        # OPTIONAL
      Tags          => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DatastoreId     = $CreateDatastoreResponse->DatastoreId;
    my $DatastoreStatus = $CreateDatastoreResponse->DatastoreStatus;

    # Returns a L<Paws::MedicalImaging::CreateDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/CreateDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for API idempotency.



=head2 DatastoreName => Str

The data store name.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) assigned to the Key Management Service
(KMS) key for accessing encrypted data.



=head2 Tags => L<Paws::MedicalImaging::TagMap>

The tags provided when creating a data store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatastore in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

