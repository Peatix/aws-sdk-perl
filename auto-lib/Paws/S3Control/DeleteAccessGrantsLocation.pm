
package Paws::S3Control::DeleteAccessGrantsLocation;
  use Moose;
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str', uri_name => 'id', traits => ['ParamInURI'], required => 1);
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessGrantsLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/location/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DeleteAccessGrantsLocation - Arguments for method DeleteAccessGrantsLocation on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccessGrantsLocation on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method DeleteAccessGrantsLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccessGrantsLocation.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->DeleteAccessGrantsLocation(
      AccessGrantsLocationId => 'MyAccessGrantsLocationId',
      AccountId              => 'MyAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/DeleteAccessGrantsLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessGrantsLocationId => Str

The ID of the registered location that you are deregistering from your
S3 Access Grants instance. S3 Access Grants assigned this ID when you
registered the location. S3 Access Grants assigns the ID C<default> to
the default location C<s3://> and assigns an auto-generated ID to other
locations that you register.



=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccessGrantsLocation in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

