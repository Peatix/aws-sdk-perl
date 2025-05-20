
package Paws::S3Control::CreateAccessGrantsLocation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has IAMRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has LocationScope => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::Tag]', request_name => 'Tag', traits => ['NameInRequest']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessGrantsLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/location');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::CreateAccessGrantsLocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateAccessGrantsLocationRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessGrantsLocation - Arguments for method CreateAccessGrantsLocation on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessGrantsLocation on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateAccessGrantsLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessGrantsLocation.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $CreateAccessGrantsLocationResult =
      $s3 -control->CreateAccessGrantsLocation(
      AccountId     => 'MyAccountId',
      IAMRoleArn    => 'MyIAMRoleArn',
      LocationScope => 'MyS3Prefix',
      Tags          => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 128
          Value => 'MyTagValueString',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AccessGrantsLocationArn =
      $CreateAccessGrantsLocationResult->AccessGrantsLocationArn;
    my $AccessGrantsLocationId =
      $CreateAccessGrantsLocationResult->AccessGrantsLocationId;
    my $CreatedAt     = $CreateAccessGrantsLocationResult->CreatedAt;
    my $IAMRoleArn    = $CreateAccessGrantsLocationResult->IAMRoleArn;
    my $LocationScope = $CreateAccessGrantsLocationResult->LocationScope;

    # Returns a L<Paws::S3Control::CreateAccessGrantsLocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateAccessGrantsLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 B<REQUIRED> IAMRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for the registered
location. S3 Access Grants assumes this role to manage access to the
registered location.



=head2 B<REQUIRED> LocationScope => Str

The S3 path to the location that you are registering. The location
scope can be the default S3 location C<s3://>, the S3 path to a bucket
C<s3://E<lt>bucketE<gt>>, or the S3 path to a bucket and prefix
C<s3://E<lt>bucketE<gt>/E<lt>prefixE<gt>>. A prefix in S3 is a string
of characters at the beginning of an object key name used to organize
the objects that you store in your S3 buckets. For example, object key
names that start with the C<engineering/> prefix or object key names
that start with the C<marketing/campaigns/> prefix.



=head2 Tags => ArrayRef[L<Paws::S3Control::Tag>]

The Amazon Web Services resource tags that you are adding to the S3
Access Grants location. Each tag is a label consisting of a
user-defined key and value. Tags can help you manage, identify,
organize, search for, and filter resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessGrantsLocation in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

