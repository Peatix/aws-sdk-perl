
package Paws::AppIntegrations::DeleteDataIntegration;
  use Moose;
  has DataIntegrationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::DeleteDataIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::DeleteDataIntegration - Arguments for method DeleteDataIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method DeleteDataIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $DeleteDataIntegrationResponse =
      $app -integrations->DeleteDataIntegration(
      DataIntegrationIdentifier => 'MyIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/DeleteDataIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataIntegrationIdentifier => Str

A unique identifier for the DataIntegration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

