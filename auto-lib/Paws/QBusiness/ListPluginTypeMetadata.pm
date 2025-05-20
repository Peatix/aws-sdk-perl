
package Paws::QBusiness::ListPluginTypeMetadata;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPluginTypeMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pluginTypeMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListPluginTypeMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListPluginTypeMetadata - Arguments for method ListPluginTypeMetadata on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPluginTypeMetadata on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListPluginTypeMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPluginTypeMetadata.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListPluginTypeMetadataResponse = $qbusiness->ListPluginTypeMetadata(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListPluginTypeMetadataResponse->Items;
    my $NextToken = $ListPluginTypeMetadataResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListPluginTypeMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListPluginTypeMetadata>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of plugin metadata items to return.



=head2 NextToken => Str

If the metadata returned exceeds C<maxResults>, Amazon Q Business
returns a next token as a pagination token to retrieve the next set of
metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPluginTypeMetadata in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

