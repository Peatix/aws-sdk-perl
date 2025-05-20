
package Paws::CleanRooms::UpdateProtectedJob;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has ProtectedJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'protectedJobIdentifier', required => 1);
  has TargetStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProtectedJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateProtectedJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateProtectedJob - Arguments for method UpdateProtectedJob on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProtectedJob on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateProtectedJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProtectedJob.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateProtectedJobOutput = $cleanrooms->UpdateProtectedJob(
      MembershipIdentifier   => 'MyMembershipIdentifier',
      ProtectedJobIdentifier => 'MyProtectedJobIdentifier',
      TargetStatus           => 'CANCELLED',

    );

    # Results:
    my $ProtectedJob = $UpdateProtectedJobOutput->ProtectedJob;

    # Returns a L<Paws::CleanRooms::UpdateProtectedJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateProtectedJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for a member of a protected job instance.



=head2 B<REQUIRED> ProtectedJobIdentifier => Str

The identifier of the protected job to update.



=head2 B<REQUIRED> TargetStatus => Str

The target status of a protected job. Used to update the execution
status of a currently running job.

Valid values are: C<"CANCELLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProtectedJob in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

