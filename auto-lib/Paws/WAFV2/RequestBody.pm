package Paws::WAFV2::RequestBody;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has API_GATEWAY => (is => 'ro', isa => 'Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig');
  has APP_RUNNER_SERVICE => (is => 'ro', isa => 'Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig');
  has CLOUDFRONT => (is => 'ro', isa => 'Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig');
  has COGNITO_USER_POOL => (is => 'ro', isa => 'Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig');
  has VERIFIED_ACCESS_INSTANCE => (is => 'ro', isa => 'Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::RequestBody

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::RequestBody object:

  $service_obj->Method(Att1 => { API_GATEWAY => $value, ..., VERIFIED_ACCESS_INSTANCE => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::RequestBody object:

  $result = $service_obj->Method(...);
  $result->Att1->API_GATEWAY

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 API_GATEWAY => L<Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig>


=head2 APP_RUNNER_SERVICE => L<Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig>


=head2 CLOUDFRONT => L<Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig>


=head2 COGNITO_USER_POOL => L<Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig>


=head2 VERIFIED_ACCESS_INSTANCE => L<Paws::WAFV2::RequestBodyAssociatedResourceTypeConfig>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

