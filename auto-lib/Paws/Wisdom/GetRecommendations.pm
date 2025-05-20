
package Paws::Wisdom::GetRecommendations;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has WaitTimeSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'waitTimeSeconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::GetRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetRecommendations - Arguments for method GetRecommendations on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendations on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method GetRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendations.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $GetRecommendationsResponse = $wisdom->GetRecommendations(
      AssistantId     => 'MyUuidOrArn',
      SessionId       => 'MyUuidOrArn',
      MaxResults      => 1,               # OPTIONAL
      WaitTimeSeconds => 1,               # OPTIONAL
    );

    # Results:
    my $Recommendations = $GetRecommendationsResponse->Recommendations;
    my $Triggers        = $GetRecommendationsResponse->Triggers;

    # Returns a L<Paws::Wisdom::GetRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Wisdom assistant. Can be either the ID or the
ARN. URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 B<REQUIRED> SessionId => Str

The identifier of the session. Can be either the ID or the ARN. URLs
cannot contain the ARN.



=head2 WaitTimeSeconds => Int

The duration (in seconds) for which the call waits for a recommendation
to be made available before returning. If a recommendation is
available, the call returns sooner than C<WaitTimeSeconds>. If no
messages are available and the wait time expires, the call returns
successfully with an empty list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendations in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

