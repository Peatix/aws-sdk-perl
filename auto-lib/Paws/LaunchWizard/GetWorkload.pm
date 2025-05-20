
package Paws::LaunchWizard::GetWorkload;
  use Moose;
  has WorkloadName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getWorkload');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LaunchWizard::GetWorkloadOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::GetWorkload - Arguments for method GetWorkload on L<Paws::LaunchWizard>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkload on the
L<AWS Launch Wizard|Paws::LaunchWizard> service. Use the attributes of this class
as arguments to method GetWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkload.

=head1 SYNOPSIS

    my $launchwizard = Paws->service('LaunchWizard');
    my $GetWorkloadOutput = $launchwizard->GetWorkload(
      WorkloadName => 'MyWorkloadName',

    );

    # Results:
    my $Workload = $GetWorkloadOutput->Workload;

    # Returns a L<Paws::LaunchWizard::GetWorkloadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard/GetWorkload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkloadName => Str

The name of the workload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkload in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

