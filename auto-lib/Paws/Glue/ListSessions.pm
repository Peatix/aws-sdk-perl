
package Paws::Glue::ListSessions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestOrigin => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListSessionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListSessions - Arguments for method ListSessions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSessions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSessions.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListSessionsResponse = $glue->ListSessions(
      MaxResults    => 1,                              # OPTIONAL
      NextToken     => 'MyOrchestrationToken',         # OPTIONAL
      RequestOrigin => 'MyOrchestrationNameString',    # OPTIONAL
      Tags          => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Ids       = $ListSessionsResponse->Ids;
    my $NextToken = $ListSessionsResponse->NextToken;
    my $Sessions  = $ListSessionsResponse->Sessions;

    # Returns a L<Paws::Glue::ListSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListSessions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
result.



=head2 RequestOrigin => Str

The origin of the request.



=head2 Tags => L<Paws::Glue::TagsMap>

Tags belonging to the session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSessions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

