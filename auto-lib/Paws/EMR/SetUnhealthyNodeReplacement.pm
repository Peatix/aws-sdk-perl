
package Paws::EMR::SetUnhealthyNodeReplacement;
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has UnhealthyNodeReplacement => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUnhealthyNodeReplacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SetUnhealthyNodeReplacement - Arguments for method SetUnhealthyNodeReplacement on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUnhealthyNodeReplacement on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method SetUnhealthyNodeReplacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUnhealthyNodeReplacement.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->SetUnhealthyNodeReplacement(
      JobFlowIds => [
        'MyXmlString', ...    # max: 10280
      ],
      UnhealthyNodeReplacement => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/SetUnhealthyNodeReplacement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobFlowIds => ArrayRef[Str|Undef]

The list of strings that uniquely identify the clusters for which to
turn on unhealthy node replacement. You can get these identifiers by
running the RunJobFlow or the DescribeJobFlows operations.



=head2 B<REQUIRED> UnhealthyNodeReplacement => Bool

Indicates whether to turn on or turn off graceful unhealthy node
replacement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUnhealthyNodeReplacement in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

