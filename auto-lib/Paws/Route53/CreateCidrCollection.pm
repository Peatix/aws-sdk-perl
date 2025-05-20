
package Paws::Route53::CreateCidrCollection;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCidrCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/cidrcollection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateCidrCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateCidrCollectionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'https://route53.amazonaws.com/doc/2013-04-01/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateCidrCollection - Arguments for method CreateCidrCollection on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCidrCollection on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateCidrCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCidrCollection.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateCidrCollectionResponse = $route53->CreateCidrCollection(
      CallerReference => 'MyCidrNonce',
      Name            => 'MyCollectionName',

    );

    # Results:
    my $Collection = $CreateCidrCollectionResponse->Collection;
    my $Location   = $CreateCidrCollectionResponse->Location;

    # Returns a L<Paws::Route53::CreateCidrCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateCidrCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A client-specific token that allows requests to be securely retried so
that the intended outcome will only occur once, retries receive a
similar response, and there are no additional edge cases to handle.



=head2 B<REQUIRED> Name => Str

A unique identifier for the account that can be used to reference the
collection from other API calls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCidrCollection in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

