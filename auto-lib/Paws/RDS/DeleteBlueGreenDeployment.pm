
package Paws::RDS::DeleteBlueGreenDeployment;
  use Moose;
  has BlueGreenDeploymentIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeleteTarget => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBlueGreenDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteBlueGreenDeploymentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBlueGreenDeploymentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteBlueGreenDeployment - Arguments for method DeleteBlueGreenDeployment on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBlueGreenDeployment on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteBlueGreenDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBlueGreenDeployment.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DeleteBlueGreenDeploymentResponse = $rds->DeleteBlueGreenDeployment(
      BlueGreenDeploymentIdentifier => 'MyBlueGreenDeploymentIdentifier',
      DeleteTarget                  => 1,    # OPTIONAL
    );

    # Results:
    my $BlueGreenDeployment =
      $DeleteBlueGreenDeploymentResponse->BlueGreenDeployment;

    # Returns a L<Paws::RDS::DeleteBlueGreenDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteBlueGreenDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueGreenDeploymentIdentifier => Str

The unique identifier of the blue/green deployment to delete. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match an existing blue/green deployment identifier.

=back




=head2 DeleteTarget => Bool

Specifies whether to delete the resources in the green environment. You
can't specify this option if the blue/green deployment status
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_BlueGreenDeployment.html)
is C<SWITCHOVER_COMPLETED>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBlueGreenDeployment in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

