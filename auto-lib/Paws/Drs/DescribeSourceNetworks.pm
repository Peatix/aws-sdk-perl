
package Paws::Drs::DescribeSourceNetworks;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Drs::DescribeSourceNetworksRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSourceNetworks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeSourceNetworks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::DescribeSourceNetworksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeSourceNetworks - Arguments for method DescribeSourceNetworks on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSourceNetworks on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method DescribeSourceNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSourceNetworks.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $DescribeSourceNetworksResponse = $drs->DescribeSourceNetworks(
      Filters => {
        OriginAccountID  => 'MyAccountID',    # min: 12, max: 12; OPTIONAL
        OriginRegion     => 'MyAwsRegion',    # max: 255; OPTIONAL
        SourceNetworkIDs => [
          'MySourceNetworkID', ...            # min: 20, max: 20
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeSourceNetworksResponse->Items;
    my $NextToken = $DescribeSourceNetworksResponse->NextToken;

    # Returns a L<Paws::Drs::DescribeSourceNetworksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/DescribeSourceNetworks>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Drs::DescribeSourceNetworksRequestFilters>

A set of filters by which to return Source Networks.



=head2 MaxResults => Int

Maximum number of Source Networks to retrieve.



=head2 NextToken => Str

The token of the next Source Networks to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSourceNetworks in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

