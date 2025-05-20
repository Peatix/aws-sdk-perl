
package Paws::WellArchitected::DisassociateProfiles;
  use Moose;
  has ProfileArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/disassociateProfiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::DisassociateProfiles - Arguments for method DisassociateProfiles on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateProfiles on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method DisassociateProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateProfiles.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    $wellarchitected->DisassociateProfiles(
      ProfileArns => [
        'MyProfileArn', ...    # max: 2084
      ],
      WorkloadId => 'MyWorkloadId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/DisassociateProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileArns => ArrayRef[Str|Undef]

The list of profile ARNs to disassociate from the workload.



=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateProfiles in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

