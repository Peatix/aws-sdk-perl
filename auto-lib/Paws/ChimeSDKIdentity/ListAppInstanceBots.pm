
package Paws::ChimeSDKIdentity::ListAppInstanceBots;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-arn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppInstanceBots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-bots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::ListAppInstanceBotsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceBots - Arguments for method ListAppInstanceBots on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppInstanceBots on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method ListAppInstanceBots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppInstanceBots.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $ListAppInstanceBotsResponse = $identity -chime->ListAppInstanceBots(
      AppInstanceArn => 'MyChimeArn',
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AppInstanceArn  = $ListAppInstanceBotsResponse->AppInstanceArn;
    my $AppInstanceBots = $ListAppInstanceBotsResponse->AppInstanceBots;
    my $NextToken       = $ListAppInstanceBotsResponse->NextToken;

    # Returns a L<Paws::ChimeSDKIdentity::ListAppInstanceBotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/ListAppInstanceBots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 MaxResults => Int

The maximum number of requests to return.



=head2 NextToken => Str

The token passed by previous API calls until all requested bots are
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppInstanceBots in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

