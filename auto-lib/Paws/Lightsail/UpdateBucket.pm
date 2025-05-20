
package Paws::Lightsail::UpdateBucket;
  use Moose;
  has AccessLogConfig => (is => 'ro', isa => 'Paws::Lightsail::BucketAccessLogConfig', traits => ['NameInRequest'], request_name => 'accessLogConfig' );
  has AccessRules => (is => 'ro', isa => 'Paws::Lightsail::AccessRules', traits => ['NameInRequest'], request_name => 'accessRules' );
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);
  has ReadonlyAccessAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'readonlyAccessAccounts' );
  has Versioning => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versioning' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBucket');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateBucket - Arguments for method UpdateBucket on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBucket on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBucket.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateBucketResult = $lightsail->UpdateBucket(
      BucketName      => 'MyBucketName',
      AccessLogConfig => {
        Enabled     => 1,
        Destination => 'MyBucketName',              # min: 3, max: 54
        Prefix      => 'MyBucketAccessLogPrefix',   # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      AccessRules => {
        AllowPublicOverrides => 1,
        GetObject            => 'public',    # values: public, private; OPTIONAL
      },    # OPTIONAL
      ReadonlyAccessAccounts => [ 'MyNonEmptyString', ... ],    # OPTIONAL
      Versioning             => 'MyNonEmptyString',             # OPTIONAL
    );

    # Results:
    my $Bucket     = $UpdateBucketResult->Bucket;
    my $Operations = $UpdateBucketResult->Operations;

    # Returns a L<Paws::Lightsail::UpdateBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateBucket>

=head1 ATTRIBUTES


=head2 AccessLogConfig => L<Paws::Lightsail::BucketAccessLogConfig>

An object that describes the access log configuration for the bucket.



=head2 AccessRules => L<Paws::Lightsail::AccessRules>

An object that sets the public accessibility of objects in the
specified bucket.



=head2 B<REQUIRED> BucketName => Str

The name of the bucket to update.



=head2 ReadonlyAccessAccounts => ArrayRef[Str|Undef]

An array of strings to specify the Amazon Web Services account IDs that
can access the bucket.

You can give a maximum of 10 Amazon Web Services accounts access to a
bucket.



=head2 Versioning => Str

Specifies whether to enable or suspend versioning of objects in the
bucket.

The following options can be specified:

=over

=item *

C<Enabled> - Enables versioning of objects in the specified bucket.

=item *

C<Suspended> - Suspends versioning of objects in the specified bucket.
Existing object versions are retained.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBucket in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

