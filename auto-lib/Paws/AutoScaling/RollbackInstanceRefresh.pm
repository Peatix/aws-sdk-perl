
package Paws::AutoScaling::RollbackInstanceRefresh;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RollbackInstanceRefresh');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::RollbackInstanceRefreshAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RollbackInstanceRefreshResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::RollbackInstanceRefresh - Arguments for method RollbackInstanceRefresh on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RollbackInstanceRefresh on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method RollbackInstanceRefresh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RollbackInstanceRefresh.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    my $RollbackInstanceRefreshAnswer = $autoscaling->RollbackInstanceRefresh(
      AutoScalingGroupName => 'MyXmlStringMaxLen255',

    );

    # Results:
    my $InstanceRefreshId = $RollbackInstanceRefreshAnswer->InstanceRefreshId;

    # Returns a L<Paws::AutoScaling::RollbackInstanceRefreshAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/RollbackInstanceRefresh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RollbackInstanceRefresh in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

