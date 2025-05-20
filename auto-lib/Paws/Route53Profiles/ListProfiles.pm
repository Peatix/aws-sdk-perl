
package Paws::Route53Profiles::ListProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::ListProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ListProfiles - Arguments for method ListProfiles on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfiles on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method ListProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfiles.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $ListProfilesResponse = $route53profiles->ListProfiles(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListProfilesResponse->NextToken;
    my $ProfileSummaries = $ListProfilesResponse->ProfileSummaries;

    # Returns a L<Paws::Route53Profiles::ListProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/ListProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that you want to return for this request.
If more objects are available, in the response, a C<NextToken> value,
which you can use in a subsequent call to get the next batch of
objects, is provided.

If you don't specify a value for C<MaxResults>, up to 100 objects are
returned.



=head2 NextToken => Str

For the first call to this list request, omit this value.

When you request a list of objects, at most the number of objects
specified by C<MaxResults> is returned. If more objects are available
for retrieval, a C<NextToken> value is returned in the response. To
retrieve the next batch of objects, use the token that was returned for
the prior request in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfiles in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

