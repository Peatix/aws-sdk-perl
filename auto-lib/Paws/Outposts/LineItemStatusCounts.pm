package Paws::Outposts::LineItemStatusCounts;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has BUILDING => (is => 'ro', isa => 'Int');
  has CANCELLED => (is => 'ro', isa => 'Int');
  has DELIVERED => (is => 'ro', isa => 'Int');
  has ERROR => (is => 'ro', isa => 'Int');
  has INSTALLED => (is => 'ro', isa => 'Int');
  has INSTALLING => (is => 'ro', isa => 'Int');
  has PREPARING => (is => 'ro', isa => 'Int');
  has REPLACED => (is => 'ro', isa => 'Int');
  has SHIPPED => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::LineItemStatusCounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Outposts::LineItemStatusCounts object:

  $service_obj->Method(Att1 => { BUILDING => $value, ..., SHIPPED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Outposts::LineItemStatusCounts object:

  $result = $service_obj->Method(...);
  $result->Att1->BUILDING

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BUILDING => Int


=head2 CANCELLED => Int


=head2 DELIVERED => Int


=head2 ERROR => Int


=head2 INSTALLED => Int


=head2 INSTALLING => Int


=head2 PREPARING => Int


=head2 REPLACED => Int


=head2 SHIPPED => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

