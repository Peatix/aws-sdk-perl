
package Paws::S3Control::TagResource;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', uri_name => 'resourceArn', traits => ['ParamInURI'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::Tag]', request_name => 'Tag', traits => ['NameInRequest'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/tags/{resourceArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::TagResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'TagResourceRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::TagResource - Arguments for method TagResource on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $TagResourceResult = $s3 -control->TagResource(
      AccountId   => 'MyAccountId',
      ResourceArn => 'MyS3ResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 128
          Value => 'MyTagValueString',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID that created the S3 resource that
you're trying to add tags to or the requester's account ID.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the S3 resource that you're trying to
add tags to. The tagged resource can be an S3 Storage Lens group or S3
Access Grants instance, registered location, or grant.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::S3Control::Tag>]

The Amazon Web Services resource tags that you want to add to the
specified S3 resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

