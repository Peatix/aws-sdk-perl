
package Paws::S3Control::UpdateAccessGrantsLocation;
  use Moose;
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str', uri_name => 'id', traits => ['ParamInURI'], required => 1);
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has IAMRoleArn => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessGrantsLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/location/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::UpdateAccessGrantsLocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateAccessGrantsLocationRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UpdateAccessGrantsLocation - Arguments for method UpdateAccessGrantsLocation on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccessGrantsLocation on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method UpdateAccessGrantsLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccessGrantsLocation.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $UpdateAccessGrantsLocationResult =
      $s3 -control->UpdateAccessGrantsLocation(
      AccessGrantsLocationId => 'MyAccessGrantsLocationId',
      AccountId              => 'MyAccountId',
      IAMRoleArn             => 'MyIAMRoleArn',

      );

    # Results:
    my $AccessGrantsLocationArn =
      $UpdateAccessGrantsLocationResult->AccessGrantsLocationArn;
    my $AccessGrantsLocationId =
      $UpdateAccessGrantsLocationResult->AccessGrantsLocationId;
    my $CreatedAt     = $UpdateAccessGrantsLocationResult->CreatedAt;
    my $IAMRoleArn    = $UpdateAccessGrantsLocationResult->IAMRoleArn;
    my $LocationScope = $UpdateAccessGrantsLocationResult->LocationScope;

    # Returns a L<Paws::S3Control::UpdateAccessGrantsLocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/UpdateAccessGrantsLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessGrantsLocationId => Str

The ID of the registered location that you are updating. S3 Access
Grants assigns this ID when you register the location. S3 Access Grants
assigns the ID C<default> to the default location C<s3://> and assigns
an auto-generated ID to other locations that you register.

The ID of the registered location to which you are granting access. S3
Access Grants assigned this ID when you registered the location. S3
Access Grants assigns the ID C<default> to the default location
C<s3://> and assigns an auto-generated ID to other locations that you
register.

If you are passing the C<default> location, you cannot create an access
grant for the entire default location. You must also specify a bucket
or a bucket and prefix in the C<Subprefix> field.



=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 B<REQUIRED> IAMRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for the registered
location. S3 Access Grants assumes this role to manage access to the
registered location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccessGrantsLocation in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

