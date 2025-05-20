
package Paws::ControlCatalog::ListControls;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListControls');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-controls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlCatalog::ListControlsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListControls - Arguments for method ListControls on L<Paws::ControlCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListControls on the
L<AWS Control Catalog|Paws::ControlCatalog> service. Use the attributes of this class
as arguments to method ListControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListControls.

=head1 SYNOPSIS

    my $controlcatalog = Paws->service('ControlCatalog');
    my $ListControlsResponse = $controlcatalog->ListControls(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Controls  = $ListControlsResponse->Controls;
    my $NextToken = $ListControlsResponse->NextToken;

    # Returns a L<Paws::ControlCatalog::ListControlsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlcatalog/ListControls>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results on a page or for an API request call.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListControls in L<Paws::ControlCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

