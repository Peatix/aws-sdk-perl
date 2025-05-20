
package Paws::Drs::TerminateRecoveryInstances;
  use Moose;
  has RecoveryInstanceIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recoveryInstanceIDs', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateRecoveryInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TerminateRecoveryInstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::TerminateRecoveryInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::TerminateRecoveryInstances - Arguments for method TerminateRecoveryInstances on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateRecoveryInstances on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method TerminateRecoveryInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateRecoveryInstances.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $TerminateRecoveryInstancesResponse = $drs->TerminateRecoveryInstances(
      RecoveryInstanceIDs => [
        'MyRecoveryInstanceID', ...    # min: 10, max: 19
      ],

    );

    # Results:
    my $Job = $TerminateRecoveryInstancesResponse->Job;

    # Returns a L<Paws::Drs::TerminateRecoveryInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/TerminateRecoveryInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryInstanceIDs => ArrayRef[Str|Undef]

The IDs of the Recovery Instances that should be terminated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateRecoveryInstances in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

