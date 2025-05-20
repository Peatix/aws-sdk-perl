
package Paws::Lightsail::SetResourceAccessForBucket;
  use Moose;
  has Access => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'access' , required => 1);
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetResourceAccessForBucket');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::SetResourceAccessForBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::SetResourceAccessForBucket - Arguments for method SetResourceAccessForBucket on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetResourceAccessForBucket on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method SetResourceAccessForBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetResourceAccessForBucket.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $SetResourceAccessForBucketResult =
      $lightsail->SetResourceAccessForBucket(
      Access       => 'allow',
      BucketName   => 'MyBucketName',
      ResourceName => 'MyResourceName',

      );

    # Results:
    my $Operations = $SetResourceAccessForBucketResult->Operations;

    # Returns a L<Paws::Lightsail::SetResourceAccessForBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/SetResourceAccessForBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Access => Str

The access setting.

The following access settings are available:

=over

=item *

C<allow> - Allows access to the bucket and its objects.

=item *

C<deny> - Denies access to the bucket and its objects. Use this setting
to remove access for a resource previously set to C<allow>.

=back


Valid values are: C<"allow">, C<"deny">

=head2 B<REQUIRED> BucketName => Str

The name of the bucket for which to set access to another Lightsail
resource.



=head2 B<REQUIRED> ResourceName => Str

The name of the Lightsail instance for which to set bucket access. The
instance must be in a running or stopped state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetResourceAccessForBucket in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

