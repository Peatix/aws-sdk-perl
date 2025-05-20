
package Paws::EMR::SetKeepJobFlowAliveWhenNoSteps;
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetKeepJobFlowAliveWhenNoSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SetKeepJobFlowAliveWhenNoSteps - Arguments for method SetKeepJobFlowAliveWhenNoSteps on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetKeepJobFlowAliveWhenNoSteps on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method SetKeepJobFlowAliveWhenNoSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetKeepJobFlowAliveWhenNoSteps.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->SetKeepJobFlowAliveWhenNoSteps(
      JobFlowIds => [
        'MyXmlString', ...    # max: 10280
      ],
      KeepJobFlowAliveWhenNoSteps => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/SetKeepJobFlowAliveWhenNoSteps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobFlowIds => ArrayRef[Str|Undef]

A list of strings that uniquely identify the clusters to protect. This
identifier is returned by RunJobFlow
(https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html)
and can also be obtained from DescribeJobFlows
(https://docs.aws.amazon.com/emr/latest/APIReference/API_DescribeJobFlows.html).



=head2 B<REQUIRED> KeepJobFlowAliveWhenNoSteps => Bool

A Boolean that indicates whether to terminate the cluster after all
steps are executed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetKeepJobFlowAliveWhenNoSteps in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

