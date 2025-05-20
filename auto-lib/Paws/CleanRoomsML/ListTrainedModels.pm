
package Paws::CleanRoomsML::ListTrainedModels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrainedModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::ListTrainedModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListTrainedModels - Arguments for method ListTrainedModels on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrainedModels on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method ListTrainedModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrainedModels.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $ListTrainedModelsResponse = $cleanrooms -ml->ListTrainedModels(
      MembershipIdentifier => 'MyUUID',
      MaxResults           => 1,                # OPTIONAL
      NextToken            => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListTrainedModelsResponse->NextToken;
    my $TrainedModels = $ListTrainedModelsResponse->TrainedModels;

    # Returns a L<Paws::CleanRoomsML::ListTrainedModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/ListTrainedModels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of the results that is returned per call.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the trained models you are
interested in.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrainedModels in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

