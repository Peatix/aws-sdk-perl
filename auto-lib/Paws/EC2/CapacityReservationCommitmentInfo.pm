package Paws::EC2::CapacityReservationCommitmentInfo;
  use Moose;
  has CommitmentEndDate => (is => 'ro', isa => 'Str', request_name => 'commitmentEndDate', traits => ['NameInRequest']);
  has CommittedInstanceCount => (is => 'ro', isa => 'Int', request_name => 'committedInstanceCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationCommitmentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationCommitmentInfo object:

  $service_obj->Method(Att1 => { CommitmentEndDate => $value, ..., CommittedInstanceCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationCommitmentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CommitmentEndDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CommitmentEndDate => Str

The date and time at which the commitment duration expires, in the
ISO8601 format in the UTC time zone (C<YYYY-MM-DDThh:mm:ss.sssZ>). You
can't decrease the instance count or cancel the Capacity Reservation
before this date and time.


=head2 CommittedInstanceCount => Int

The instance capacity that you committed to when you requested the
future-dated Capacity Reservation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
