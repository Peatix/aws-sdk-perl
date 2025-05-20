package Paws::WellArchitected::AccountSummary;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ERROR => (is => 'ro', isa => 'Int');
  has FETCH_FAILED => (is => 'ro', isa => 'Int');
  has NOT_AVAILABLE => (is => 'ro', isa => 'Int');
  has OKAY => (is => 'ro', isa => 'Int');
  has WARNING => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::AccountSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WellArchitected::AccountSummary object:

  $service_obj->Method(Att1 => { ERROR => $value, ..., WARNING => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WellArchitected::AccountSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ERROR

=head1 DESCRIPTION

Account summary for a Well-Architected best practice in relation to
Trusted Advisor checks.

=head1 ATTRIBUTES


=head2 ERROR => Int


=head2 FETCH_FAILED => Int


=head2 NOT_AVAILABLE => Int


=head2 OKAY => Int


=head2 WARNING => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

