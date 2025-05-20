
package Paws::Lightsail::CreateBucketAccessKey;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucketAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateBucketAccessKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateBucketAccessKey - Arguments for method CreateBucketAccessKey on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucketAccessKey on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateBucketAccessKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucketAccessKey.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateBucketAccessKeyResult = $lightsail->CreateBucketAccessKey(
      BucketName => 'MyBucketName',

    );

    # Results:
    my $AccessKey  = $CreateBucketAccessKeyResult->AccessKey;
    my $Operations = $CreateBucketAccessKeyResult->Operations;

    # Returns a L<Paws::Lightsail::CreateBucketAccessKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateBucketAccessKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

The name of the bucket that the new access key will belong to, and
grant access to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucketAccessKey in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

