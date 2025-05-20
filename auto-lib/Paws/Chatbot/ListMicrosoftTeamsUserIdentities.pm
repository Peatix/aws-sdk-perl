
package Paws::Chatbot::ListMicrosoftTeamsUserIdentities;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMicrosoftTeamsUserIdentities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-ms-teams-user-identities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::ListMicrosoftTeamsUserIdentitiesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::ListMicrosoftTeamsUserIdentities - Arguments for method ListMicrosoftTeamsUserIdentities on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMicrosoftTeamsUserIdentities on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method ListMicrosoftTeamsUserIdentities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMicrosoftTeamsUserIdentities.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $ListMicrosoftTeamsUserIdentitiesResult =
      $chatbot->ListMicrosoftTeamsUserIdentities(
      ChatConfigurationArn => 'MyChatConfigurationArn',    # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyPaginationToken',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListMicrosoftTeamsUserIdentitiesResult->NextToken;
    my $TeamsUserIdentities =
      $ListMicrosoftTeamsUserIdentitiesResult->TeamsUserIdentities;

    # Returns a L<Paws::Chatbot::ListMicrosoftTeamsUserIdentitiesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/ListMicrosoftTeamsUserIdentities>

=head1 ATTRIBUTES


=head2 ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the
MicrosoftTeamsChannelConfiguration associated with the user identities
to list.



=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMicrosoftTeamsUserIdentities in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

