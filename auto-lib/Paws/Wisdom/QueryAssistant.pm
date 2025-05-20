
package Paws::Wisdom::QueryAssistant;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QueryText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryText', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryAssistant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::QueryAssistantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::QueryAssistant - Arguments for method QueryAssistant on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryAssistant on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method QueryAssistant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryAssistant.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $QueryAssistantResponse = $wisdom->QueryAssistant(
      AssistantId => 'MyUuidOrArn',
      QueryText   => 'MyQueryText',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $QueryAssistantResponse->NextToken;
    my $Results   = $QueryAssistantResponse->Results;

    # Returns a L<Paws::Wisdom::QueryAssistantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/QueryAssistant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Wisdom assistant. Can be either the ID or the
ARN. URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> QueryText => Str

The text to search for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryAssistant in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

