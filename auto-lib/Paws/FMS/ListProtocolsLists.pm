
package Paws::FMS::ListProtocolsLists;
  use Moose;
  has DefaultLists => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtocolsLists');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListProtocolsListsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListProtocolsLists - Arguments for method ListProtocolsLists on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtocolsLists on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListProtocolsLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtocolsLists.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListProtocolsListsResponse = $fms->ListProtocolsLists(
      MaxResults   => 1,
      DefaultLists => 1,                      # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListProtocolsListsResponse->NextToken;
    my $ProtocolsLists = $ListProtocolsListsResponse->ProtocolsLists;

    # Returns a L<Paws::FMS::ListProtocolsListsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListProtocolsLists>

=head1 ATTRIBUTES


=head2 DefaultLists => Bool

Specifies whether the lists to retrieve are default lists owned by
Firewall Manager.



=head2 B<REQUIRED> MaxResults => Int

The maximum number of objects that you want Firewall Manager to return
for this request. If more objects are available, in the response,
Firewall Manager provides a C<NextToken> value that you can use in a
subsequent call to get the next batch of objects.

If you don't specify this, Firewall Manager returns all available
objects.



=head2 NextToken => Str

If you specify a value for C<MaxResults> in your list request, and you
have more objects than the maximum, Firewall Manager returns this token
in the response. For all but the first request, you provide the token
returned by the prior request in the request parameters, to retrieve
the next batch of objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtocolsLists in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

