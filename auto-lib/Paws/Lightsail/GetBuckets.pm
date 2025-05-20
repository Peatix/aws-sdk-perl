
package Paws::Lightsail::GetBuckets;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' );
  has IncludeConnectedResources => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeConnectedResources' );
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuckets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetBucketsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBuckets - Arguments for method GetBuckets on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuckets on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuckets.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetBucketsResult = $lightsail->GetBuckets(
      BucketName                => 'MyBucketName',    # OPTIONAL
      IncludeConnectedResources => 1,                 # OPTIONAL
      PageToken                 => 'Mystring',        # OPTIONAL
    );

    # Results:
    my $AccountLevelBpaSync = $GetBucketsResult->AccountLevelBpaSync;
    my $Buckets             = $GetBucketsResult->Buckets;
    my $NextPageToken       = $GetBucketsResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetBucketsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetBuckets>

=head1 ATTRIBUTES


=head2 BucketName => Str

The name of the bucket for which to return information.

When omitted, the response includes all of your buckets in the Amazon
Web Services Region where the request is made.



=head2 IncludeConnectedResources => Bool

A Boolean value that indicates whether to include Lightsail instances
that were given access to the bucket using the
SetResourceAccessForBucket
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html)
action.



=head2 PageToken => Str

The token to advance to the next page of results from your request.

To get a page token, perform an initial C<GetBuckets> request. If your
results are paginated, the response will return a next page token that
you can specify as the page token in a subsequent request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuckets in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

