
package Paws::Synthetics::ListGroupResources;
  use Moose;
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/group/{groupIdentifier}/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::ListGroupResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::ListGroupResources - Arguments for method ListGroupResources on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupResources on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method ListGroupResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupResources.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $ListGroupResourcesResponse = $synthetics->ListGroupResources(
      GroupIdentifier => 'MyGroupIdentifier',
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListGroupResourcesResponse->NextToken;
    my $Resources = $ListGroupResourcesResponse->Resources;

    # Returns a L<Paws::Synthetics::ListGroupResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/ListGroupResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupIdentifier => Str

Specifies the group to return information for. You can specify the
group name, the ARN, or the group ID as the C<GroupIdentifier>.



=head2 MaxResults => Int

Specify this parameter to limit how many canary ARNs are returned each
time you use the C<ListGroupResources> operation. If you omit this
parameter, the default of 20 is used.



=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent operation to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupResources in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

