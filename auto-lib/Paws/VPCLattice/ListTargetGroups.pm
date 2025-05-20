
package Paws::VPCLattice::ListTargetGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TargetGroupType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetGroupType');
  has VpcIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'vpcIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetgroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListTargetGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListTargetGroups - Arguments for method ListTargetGroups on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetGroups on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListTargetGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetGroups.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListTargetGroupsResponse = $vpc -lattice->ListTargetGroups(
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      TargetGroupType => 'IP',             # OPTIONAL
      VpcIdentifier   => 'MyVpcId',        # OPTIONAL
    );

    # Results:
    my $Items     = $ListTargetGroupsResponse->Items;
    my $NextToken = $ListTargetGroupsResponse->NextToken;

    # Returns a L<Paws::VPCLattice::ListTargetGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListTargetGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token for the next page of results.



=head2 TargetGroupType => Str

The target group type.

Valid values are: C<"IP">, C<"LAMBDA">, C<"INSTANCE">, C<"ALB">

=head2 VpcIdentifier => Str

The ID or ARN of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetGroups in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

