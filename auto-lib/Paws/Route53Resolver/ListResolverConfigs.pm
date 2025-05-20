
package Paws::Route53Resolver::ListResolverConfigs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverConfigs - Arguments for method ListResolverConfigs on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverConfigs on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverConfigs.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverConfigsResponse = $route53resolver->ListResolverConfigs(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListResolverConfigsResponse->NextToken;
    my $ResolverConfigs = $ListResolverConfigsResponse->ResolverConfigs;

    # Returns a L<Paws::Route53Resolver::ListResolverConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverConfigs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of Resolver configurations that you want to return
in the response to a C<ListResolverConfigs> request. If you don't
specify a value for C<MaxResults>, up to 100 Resolver configurations
are returned.



=head2 NextToken => Str

(Optional) If the current Amazon Web Services account has more than
C<MaxResults> Resolver configurations, use C<NextToken> to get the
second and subsequent pages of results.

For the first C<ListResolverConfigs> request, omit this value.

For the second and subsequent requests, get the value of C<NextToken>
from the previous response and specify that value for C<NextToken> in
the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverConfigs in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

