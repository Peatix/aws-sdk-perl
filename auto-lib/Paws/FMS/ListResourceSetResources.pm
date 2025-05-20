
package Paws::FMS::ListResourceSetResources;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceSetResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListResourceSetResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListResourceSetResources - Arguments for method ListResourceSetResources on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceSetResources on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListResourceSetResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceSetResources.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListResourceSetResourcesResponse = $fms->ListResourceSetResources(
      Identifier => 'MyResourceId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListResourceSetResourcesResponse->Items;
    my $NextToken = $ListResourceSetResourcesResponse->NextToken;

    # Returns a L<Paws::FMS::ListResourceSetResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListResourceSetResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique identifier for the resource set, used in a request to refer to
the resource set.



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

This class forms part of L<Paws>, documenting arguments for method ListResourceSetResources in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

