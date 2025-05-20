
package Paws::CleanRooms::ListCollaborationAnalysisTemplates;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCollaborationAnalysisTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/analysistemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationAnalysisTemplates - Arguments for method ListCollaborationAnalysisTemplates on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCollaborationAnalysisTemplates on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method ListCollaborationAnalysisTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCollaborationAnalysisTemplates.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $ListCollaborationAnalysisTemplatesOutput =
      $cleanrooms->ListCollaborationAnalysisTemplates(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      MaxResults              => 1,                             # OPTIONAL
      NextToken               => 'MyPaginationToken',           # OPTIONAL
      );

    # Results:
    my $CollaborationAnalysisTemplateSummaries =
      $ListCollaborationAnalysisTemplatesOutput
      ->CollaborationAnalysisTemplateSummaries;
    my $NextToken = $ListCollaborationAnalysisTemplatesOutput->NextToken;

# Returns a L<Paws::CleanRooms::ListCollaborationAnalysisTemplatesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/ListCollaborationAnalysisTemplates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for the collaboration that the analysis templates
belong to. Currently accepts collaboration ID.



=head2 MaxResults => Int

The maximum number of results that are returned for an API request
call. The service chooses a default number if you don't set one. The
service might return a `nextToken` even if the `maxResults` value has
not been met.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCollaborationAnalysisTemplates in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

