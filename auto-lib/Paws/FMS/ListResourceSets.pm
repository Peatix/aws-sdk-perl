
package Paws::FMS::ListResourceSets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListResourceSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListResourceSets - Arguments for method ListResourceSets on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceSets on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListResourceSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceSets.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListResourceSetsResponse = $fms->ListResourceSets(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListResourceSetsResponse->NextToken;
    my $ResourceSets = $ListResourceSetsResponse->ResourceSets;

    # Returns a L<Paws::FMS::ListResourceSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListResourceSets>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that you want Firewall Manager to return
for this request. If more objects are available, in the response,
Firewall Manager provides a C<NextToken> value that you can use in a
subsequent call to get the next batch of objects.



=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Firewall Manager returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceSets in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

