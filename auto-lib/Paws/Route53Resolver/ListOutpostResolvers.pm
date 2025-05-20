
package Paws::Route53Resolver::ListOutpostResolvers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOutpostResolvers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListOutpostResolversResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListOutpostResolvers - Arguments for method ListOutpostResolvers on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutpostResolvers on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListOutpostResolvers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutpostResolvers.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListOutpostResolversResponse = $route53resolver->ListOutpostResolvers(
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      OutpostArn => 'MyOutpostArn',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListOutpostResolversResponse->NextToken;
    my $OutpostResolvers = $ListOutpostResolversResponse->OutpostResolvers;

    # Returns a L<Paws::Route53Resolver::ListOutpostResolversResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListOutpostResolvers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of Resolvers on the Outpost that you want to return
in the response to a C<ListOutpostResolver> request. If you don't
specify a value for C<MaxResults>, the request returns up to 100
Resolvers.



=head2 NextToken => Str

For the first C<ListOutpostResolver> request, omit this value.



=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutpostResolvers in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

