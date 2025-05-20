
package Paws::Lightsail::DeleteBucketAccessKey;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessKeyId' , required => 1);
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteBucketAccessKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteBucketAccessKey - Arguments for method DeleteBucketAccessKey on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucketAccessKey on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteBucketAccessKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucketAccessKey.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteBucketAccessKeyResult = $lightsail->DeleteBucketAccessKey(
      AccessKeyId => 'MyNonEmptyString',
      BucketName  => 'MyBucketName',

    );

    # Results:
    my $Operations = $DeleteBucketAccessKeyResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteBucketAccessKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteBucketAccessKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

The ID of the access key to delete.

Use the GetBucketAccessKeys
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html)
action to get a list of access key IDs that you can specify.



=head2 B<REQUIRED> BucketName => Str

The name of the bucket that the access key belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucketAccessKey in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

