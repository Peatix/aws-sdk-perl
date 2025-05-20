
package Paws::AppIntegrations::UpdateDataIntegration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::UpdateDataIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::UpdateDataIntegration - Arguments for method UpdateDataIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method UpdateDataIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $UpdateDataIntegrationResponse =
      $app -integrations->UpdateDataIntegration(
      Identifier  => 'MyIdentifier',
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyName',           # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/UpdateDataIntegration>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the DataIntegration.



=head2 B<REQUIRED> Identifier => Str

A unique identifier for the DataIntegration.



=head2 Name => Str

The name of the DataIntegration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

