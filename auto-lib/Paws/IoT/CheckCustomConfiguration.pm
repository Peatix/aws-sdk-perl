package Paws::IoT::CheckCustomConfiguration;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CERT_AGE_THRESHOLD_IN_DAYS => (is => 'ro', isa => 'Str');
  has CERT_EXPIRATION_THRESHOLD_IN_DAYS => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CheckCustomConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CheckCustomConfiguration object:

  $service_obj->Method(Att1 => { CERT_AGE_THRESHOLD_IN_DAYS => $value, ..., CERT_EXPIRATION_THRESHOLD_IN_DAYS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CheckCustomConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CERT_AGE_THRESHOLD_IN_DAYS

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CERT_AGE_THRESHOLD_IN_DAYS => Str


=head2 CERT_EXPIRATION_THRESHOLD_IN_DAYS => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

