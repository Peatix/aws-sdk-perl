
package Paws::SESv2::ListMultiRegionEndpoints;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'PageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultiRegionEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/multi-region-endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListMultiRegionEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListMultiRegionEndpoints - Arguments for method ListMultiRegionEndpoints on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultiRegionEndpoints on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListMultiRegionEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultiRegionEndpoints.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListMultiRegionEndpointsResponse = $email->ListMultiRegionEndpoints(
      NextToken => 'MyNextTokenV2',    # OPTIONAL
      PageSize  => 1,                  # OPTIONAL
    );

    # Results:
    my $MultiRegionEndpoints =
      $ListMultiRegionEndpointsResponse->MultiRegionEndpoints;
    my $NextToken = $ListMultiRegionEndpointsResponse->NextToken;

    # Returns a L<Paws::SESv2::ListMultiRegionEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListMultiRegionEndpoints>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token returned from a previous call to C<ListMultiRegionEndpoints> to
indicate the position in the list of multi-region endpoints
(global-endpoints).



=head2 PageSize => Int

The number of results to show in a single call to
C<ListMultiRegionEndpoints>. If the number of results is larger than
the number you specified in this parameter, the response includes a
C<NextToken> element that you can use to retrieve the next page of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultiRegionEndpoints in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

