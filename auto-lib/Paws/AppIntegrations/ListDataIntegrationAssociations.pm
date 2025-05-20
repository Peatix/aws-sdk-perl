
package Paws::AppIntegrations::ListDataIntegrationAssociations;
  use Moose;
  has DataIntegrationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIntegrationAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::ListDataIntegrationAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListDataIntegrationAssociations - Arguments for method ListDataIntegrationAssociations on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIntegrationAssociations on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method ListDataIntegrationAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIntegrationAssociations.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $ListDataIntegrationAssociationsResponse =
      $app -integrations->ListDataIntegrationAssociations(
      DataIntegrationIdentifier => 'MyIdentifier',
      MaxResults                => 1,                # OPTIONAL
      NextToken                 => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $DataIntegrationAssociations =
      $ListDataIntegrationAssociationsResponse->DataIntegrationAssociations;
    my $NextToken = $ListDataIntegrationAssociationsResponse->NextToken;

# Returns a L<Paws::AppIntegrations::ListDataIntegrationAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/ListDataIntegrationAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataIntegrationIdentifier => Str

A unique identifier for the DataIntegration.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIntegrationAssociations in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

