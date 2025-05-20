
package Paws::AmplifyBackend::ListS3Buckets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListS3Buckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/s3Buckets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::ListS3BucketsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::ListS3Buckets - Arguments for method ListS3Buckets on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListS3Buckets on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method ListS3Buckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListS3Buckets.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $ListS3BucketsResponse = $amplifybackend->ListS3Buckets(
      NextToken => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Buckets   = $ListS3BucketsResponse->Buckets;
    my $NextToken = $ListS3BucketsResponse->NextToken;

    # Returns a L<Paws::AmplifyBackend::ListS3BucketsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/ListS3Buckets>

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListS3Buckets in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

