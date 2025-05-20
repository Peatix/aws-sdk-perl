package Paws::Health::EntityStatuses;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has IMPAIRED => (is => 'ro', isa => 'Int');
  has PENDING => (is => 'ro', isa => 'Int');
  has RESOLVED => (is => 'ro', isa => 'Int');
  has UNIMPAIRED => (is => 'ro', isa => 'Int');
  has UNKNOWN => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EntityStatuses

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EntityStatuses object:

  $service_obj->Method(Att1 => { IMPAIRED => $value, ..., UNKNOWN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EntityStatuses object:

  $result = $service_obj->Method(...);
  $result->Att1->IMPAIRED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 IMPAIRED => Int


=head2 PENDING => Int


=head2 RESOLVED => Int


=head2 UNIMPAIRED => Int


=head2 UNKNOWN => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

