
package Paws::Lightsail::GetBucketAccessKeys;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketAccessKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetBucketAccessKeysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBucketAccessKeys - Arguments for method GetBucketAccessKeys on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketAccessKeys on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetBucketAccessKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketAccessKeys.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetBucketAccessKeysResult = $lightsail->GetBucketAccessKeys(
      BucketName => 'MyBucketName',

    );

    # Results:
    my $AccessKeys = $GetBucketAccessKeysResult->AccessKeys;

    # Returns a L<Paws::Lightsail::GetBucketAccessKeysResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetBucketAccessKeys>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

The name of the bucket for which to return access keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketAccessKeys in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

