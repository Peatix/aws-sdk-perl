
package Paws::Route53::ChangeCidrCollection;
  use Moose;
  has Changes => (is => 'ro', isa => 'ArrayRef[Paws::Route53::CidrCollectionChange]', required => 1);
  has CollectionVersion => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', uri_name => 'CidrCollectionId', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeCidrCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/cidrcollection/{CidrCollectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeCidrCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'ChangeCidrCollectionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'https://route53.amazonaws.com/doc/2013-04-01/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeCidrCollection - Arguments for method ChangeCidrCollection on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeCidrCollection on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ChangeCidrCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeCidrCollection.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ChangeCidrCollectionResponse = $route53->ChangeCidrCollection(
      Changes => [
        {
          Action   => 'PUT',    # values: PUT, DELETE_IF_EXISTS
          CidrList => [
            'MyCidr', ...       # min: 1, max: 50
          ],    # min: 1, max: 1000
          LocationName =>
            'MyCidrLocationNameDefaultNotAllowed',    # min: 1, max: 16

        },
        ...
      ],
      Id                => 'MyUUID',
      CollectionVersion => 1,          # OPTIONAL
    );

    # Results:
    my $Id = $ChangeCidrCollectionResponse->Id;

    # Returns a L<Paws::Route53::ChangeCidrCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ChangeCidrCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Changes => ArrayRef[L<Paws::Route53::CidrCollectionChange>]

Information about changes to a CIDR collection.



=head2 CollectionVersion => Int

A sequential counter that Amazon Route 53 sets to 1 when you create a
collection and increments it by 1 each time you update the collection.

We recommend that you use C<ListCidrCollection> to get the current
value of C<CollectionVersion> for the collection that you want to
update, and then include that value with the change request. This
prevents Route 53 from overwriting an intervening update:

=over

=item *

If the value in the request matches the value of C<CollectionVersion>
in the collection, Route 53 updates the collection.

=item *

If the value of C<CollectionVersion> in the collection is greater than
the value in the request, the collection was changed after you got the
version number. Route 53 does not update the collection, and it returns
a C<CidrCollectionVersionMismatch> error.

=back




=head2 B<REQUIRED> Id => Str

The UUID of the CIDR collection to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeCidrCollection in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

