
package Paws::IoT::ListThingPrincipalsV2;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);
  has ThingPrincipalType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingPrincipalType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThingPrincipalsV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/principals-v2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingPrincipalsV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipalsV2 - Arguments for method ListThingPrincipalsV2 on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingPrincipalsV2 on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingPrincipalsV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingPrincipalsV2.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingPrincipalsV2Response = $iot->ListThingPrincipalsV2(
      ThingName          => 'MyThingName',
      MaxResults         => 1,                    # OPTIONAL
      NextToken          => 'MyNextToken',        # OPTIONAL
      ThingPrincipalType => 'EXCLUSIVE_THING',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListThingPrincipalsV2Response->NextToken;
    my $ThingPrincipalObjects =
      $ListThingPrincipalsV2Response->ThingPrincipalObjects;

    # Returns a L<Paws::IoT::ListThingPrincipalsV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingPrincipalsV2>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.



=head2 B<REQUIRED> ThingName => Str

The name of the thing.



=head2 ThingPrincipalType => Str

The type of the relation you want to filter in the response. If no
value is provided in this field, the response will list all principals,
including both the C<EXCLUSIVE_THING> and C<NON_EXCLUSIVE_THING>
attachment types.

=over

=item *

C<EXCLUSIVE_THING> - Attaches the specified principal to the specified
thing, exclusively. The thing will be the only thing thatE<rsquo>s
attached to the principal.

=back

=over

=item *

C<NON_EXCLUSIVE_THING> - Attaches the specified principal to the
specified thing. Multiple things can be attached to the principal.

=back


Valid values are: C<"EXCLUSIVE_THING">, C<"NON_EXCLUSIVE_THING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingPrincipalsV2 in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

