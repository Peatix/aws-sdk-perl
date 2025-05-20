
package Paws::IoTTwinMaker::ListComponentTypes;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::ListComponentTypesFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponentTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/component-types-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ListComponentTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListComponentTypes - Arguments for method ListComponentTypes on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponentTypes on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ListComponentTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponentTypes.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ListComponentTypesResponse = $iottwinmaker->ListComponentTypes(
      WorkspaceId => 'MyId',
      Filters     => [
        {
          ExtendsFrom => 'MyComponentTypeId',    # min: 1, max: 256; OPTIONAL
          IsAbstract  => 1,                      # OPTIONAL
          Namespace   => 'MyString',             # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ComponentTypeSummaries =
      $ListComponentTypesResponse->ComponentTypeSummaries;
    my $MaxResults  = $ListComponentTypesResponse->MaxResults;
    my $NextToken   = $ListComponentTypesResponse->NextToken;
    my $WorkspaceId = $ListComponentTypesResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::ListComponentTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ListComponentTypes>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::IoTTwinMaker::ListComponentTypesFilter>]

A list of objects that filter the request.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.

Valid Range: Minimum value of 1. Maximum value of 250.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponentTypes in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

