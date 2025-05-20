package Paws::Notifications::TextByLocale;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has de_DE => (is => 'ro', isa => 'Str');
  has en_CA => (is => 'ro', isa => 'Str');
  has en_UK => (is => 'ro', isa => 'Str');
  has en_US => (is => 'ro', isa => 'Str');
  has es_ES => (is => 'ro', isa => 'Str');
  has fr_CA => (is => 'ro', isa => 'Str');
  has fr_FR => (is => 'ro', isa => 'Str');
  has id_ID => (is => 'ro', isa => 'Str');
  has it_IT => (is => 'ro', isa => 'Str');
  has ja_JP => (is => 'ro', isa => 'Str');
  has ko_KR => (is => 'ro', isa => 'Str');
  has pt_BR => (is => 'ro', isa => 'Str');
  has tr_TR => (is => 'ro', isa => 'Str');
  has zh_CN => (is => 'ro', isa => 'Str');
  has zh_TW => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::TextByLocale

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Notifications::TextByLocale object:

  $service_obj->Method(Att1 => { de_DE => $value, ..., zh_TW => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Notifications::TextByLocale object:

  $result = $service_obj->Method(...);
  $result->Att1->de_DE

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 de_DE => Str


=head2 en_CA => Str


=head2 en_UK => Str


=head2 en_US => Str


=head2 es_ES => Str


=head2 fr_CA => Str


=head2 fr_FR => Str


=head2 id_ID => Str


=head2 it_IT => Str


=head2 ja_JP => Str


=head2 ko_KR => Str


=head2 pt_BR => Str


=head2 tr_TR => Str


=head2 zh_CN => Str


=head2 zh_TW => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

