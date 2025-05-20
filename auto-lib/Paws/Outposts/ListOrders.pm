
package Paws::Outposts::ListOrders;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OutpostIdentifierFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OutpostIdentifierFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrders');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-orders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListOrdersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListOrders - Arguments for method ListOrders on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrders on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListOrders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrders.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListOrdersOutput = $outposts->ListOrders(
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'MyToken',                # OPTIONAL
      OutpostIdentifierFilter => 'MyOutpostIdentifier',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOrdersOutput->NextToken;
    my $Orders    = $ListOrdersOutput->Orders;

    # Returns a L<Paws::Outposts::ListOrdersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListOrders>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 OutpostIdentifierFilter => Str

The ID or the Amazon Resource Name (ARN) of the Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrders in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

