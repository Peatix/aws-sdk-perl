
package Paws::S3Control::GetAccessGrantsLocation;
  use Moose;
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str', uri_name => 'id', traits => ['ParamInURI'], required => 1);
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessGrantsLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/location/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetAccessGrantsLocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessGrantsLocation - Arguments for method GetAccessGrantsLocation on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessGrantsLocation on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetAccessGrantsLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessGrantsLocation.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetAccessGrantsLocationResult = $s3 -control->GetAccessGrantsLocation(
      AccessGrantsLocationId => 'MyAccessGrantsLocationId',
      AccountId              => 'MyAccountId',

    );

    # Results:
    my $AccessGrantsLocationArn =
      $GetAccessGrantsLocationResult->AccessGrantsLocationArn;
    my $AccessGrantsLocationId =
      $GetAccessGrantsLocationResult->AccessGrantsLocationId;
    my $CreatedAt     = $GetAccessGrantsLocationResult->CreatedAt;
    my $IAMRoleArn    = $GetAccessGrantsLocationResult->IAMRoleArn;
    my $LocationScope = $GetAccessGrantsLocationResult->LocationScope;

    # Returns a L<Paws::S3Control::GetAccessGrantsLocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetAccessGrantsLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessGrantsLocationId => Str

The ID of the registered location that you are retrieving. S3 Access
Grants assigns this ID when you register the location. S3 Access Grants
assigns the ID C<default> to the default location C<s3://> and assigns
an auto-generated ID to other locations that you register.



=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessGrantsLocation in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

