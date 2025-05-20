package Paws::QConnect::AIAgentConfigurationMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ANSWER_RECOMMENDATION => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfigurationData');
  has MANUAL_SEARCH => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfigurationData');
  has SELF_SERVICE => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfigurationData');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::AIAgentConfigurationMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::AIAgentConfigurationMap object:

  $service_obj->Method(Att1 => { ANSWER_RECOMMENDATION => $value, ..., SELF_SERVICE => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::AIAgentConfigurationMap object:

  $result = $service_obj->Method(...);
  $result->Att1->ANSWER_RECOMMENDATION

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ANSWER_RECOMMENDATION => L<Paws::QConnect::AIAgentConfigurationData>


=head2 MANUAL_SEARCH => L<Paws::QConnect::AIAgentConfigurationData>


=head2 SELF_SERVICE => L<Paws::QConnect::AIAgentConfigurationData>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

