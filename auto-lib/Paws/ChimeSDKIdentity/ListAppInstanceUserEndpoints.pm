
package Paws::ChimeSDKIdentity::ListAppInstanceUserEndpoints;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceUserArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppInstanceUserEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users/{appInstanceUserArn}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::ListAppInstanceUserEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceUserEndpoints - Arguments for method ListAppInstanceUserEndpoints on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppInstanceUserEndpoints on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method ListAppInstanceUserEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppInstanceUserEndpoints.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $ListAppInstanceUserEndpointsResponse =
      $identity -chime->ListAppInstanceUserEndpoints(
      AppInstanceUserArn => 'MySensitiveChimeArn',
      MaxResults         => 1,                       # OPTIONAL
      NextToken          => 'MyNextToken',           # OPTIONAL
      );

    # Results:
    my $AppInstanceUserEndpoints =
      $ListAppInstanceUserEndpointsResponse->AppInstanceUserEndpoints;
    my $NextToken = $ListAppInstanceUserEndpointsResponse->NextToken;

# Returns a L<Paws::ChimeSDKIdentity::ListAppInstanceUserEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/ListAppInstanceUserEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.



=head2 MaxResults => Int

The maximum number of endpoints that you want to return.



=head2 NextToken => Str

The token passed by previous API calls until all requested endpoints
are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppInstanceUserEndpoints in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

