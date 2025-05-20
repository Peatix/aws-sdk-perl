
package Paws::CleanRoomsML::ListCollaborationTrainedModels;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCollaborationTrainedModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/trained-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationTrainedModels - Arguments for method ListCollaborationTrainedModels on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCollaborationTrainedModels on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method ListCollaborationTrainedModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCollaborationTrainedModels.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $ListCollaborationTrainedModelsResponse =
      $cleanrooms -ml->ListCollaborationTrainedModels(
      CollaborationIdentifier => 'MyUUID',
      MaxResults              => 1,                # OPTIONAL
      NextToken               => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $CollaborationTrainedModels =
      $ListCollaborationTrainedModelsResponse->CollaborationTrainedModels;
    my $NextToken = $ListCollaborationTrainedModelsResponse->NextToken;

# Returns a L<Paws::CleanRoomsML::ListCollaborationTrainedModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/ListCollaborationTrainedModels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the trained
models you are interested in.



=head2 MaxResults => Int

The maximum size of the results that is returned per call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCollaborationTrainedModels in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

