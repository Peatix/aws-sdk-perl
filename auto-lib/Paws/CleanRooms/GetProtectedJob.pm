
package Paws::CleanRooms::GetProtectedJob;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has ProtectedJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'protectedJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProtectedJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetProtectedJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetProtectedJob - Arguments for method GetProtectedJob on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProtectedJob on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetProtectedJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProtectedJob.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetProtectedJobOutput = $cleanrooms->GetProtectedJob(
      MembershipIdentifier   => 'MyMembershipIdentifier',
      ProtectedJobIdentifier => 'MyProtectedJobIdentifier',

    );

    # Results:
    my $ProtectedJob = $GetProtectedJobOutput->ProtectedJob;

    # Returns a L<Paws::CleanRooms::GetProtectedJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetProtectedJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for a membership in a protected job instance.



=head2 B<REQUIRED> ProtectedJobIdentifier => Str

The identifier for the protected job instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProtectedJob in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

