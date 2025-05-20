package Paws::SSMContacts::ShiftCoveragesMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has FRI => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has MON => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has SAT => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has SUN => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has THU => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has TUE => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
  has WED => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::CoverageTime]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ShiftCoveragesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMContacts::ShiftCoveragesMap object:

  $service_obj->Method(Att1 => { FRI => $value, ..., WED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMContacts::ShiftCoveragesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->FRI

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FRI => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 MON => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 SAT => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 SUN => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 THU => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 TUE => ArrayRef[L<Paws::SSMContacts::CoverageTime>]


=head2 WED => ArrayRef[L<Paws::SSMContacts::CoverageTime>]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

