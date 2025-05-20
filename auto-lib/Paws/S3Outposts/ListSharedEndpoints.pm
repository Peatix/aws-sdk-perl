
package Paws::S3Outposts::ListSharedEndpoints;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OutpostId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'outpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSharedEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/S3Outposts/ListSharedEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Outposts::ListSharedEndpointsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListSharedEndpoints - Arguments for method ListSharedEndpoints on L<Paws::S3Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSharedEndpoints on the
L<Amazon S3 on Outposts|Paws::S3Outposts> service. Use the attributes of this class
as arguments to method ListSharedEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSharedEndpoints.

=head1 SYNOPSIS

    my $s3-outposts = Paws->service('S3Outposts');
    my $ListSharedEndpointsResult = $s3 -outposts->ListSharedEndpoints(
      OutpostId  => 'MyOutpostId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListSharedEndpointsResult->Endpoints;
    my $NextToken = $ListSharedEndpointsResult->NextToken;

    # Returns a L<Paws::S3Outposts::ListSharedEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts/ListSharedEndpoints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of endpoints that will be returned in the response.



=head2 NextToken => Str

If a previous response from this operation included a C<NextToken>
value, you can provide that value here to retrieve the next page of
results.



=head2 B<REQUIRED> OutpostId => Str

The ID of the Amazon Web Services Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSharedEndpoints in L<Paws::S3Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

