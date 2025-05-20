
package Paws::S3Control::UntagResource;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', uri_name => 'resourceArn', traits => ['ParamInURI'], required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tagKeys', traits => ['NameInRequest'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/tags/{resourceArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::UntagResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UntagResource - Arguments for method UntagResource on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $UntagResourceResult = $s3 -control->UntagResource(
      AccountId   => 'MyAccountId',
      ResourceArn => 'MyS3ResourceArn',
      TagKeys     => [
        'MyTagKeyString', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID that owns the resource that you're
trying to remove the tags from.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the S3 resource that you're trying to
remove the tags from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The array of tag key-value pairs that you're trying to remove from of
the S3 resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

