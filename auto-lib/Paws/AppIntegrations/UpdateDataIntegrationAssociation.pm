
package Paws::AppIntegrations::UpdateDataIntegrationAssociation;
  use Moose;
  has DataIntegrationAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataIntegrationAssociationIdentifier', required => 1);
  has DataIntegrationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has ExecutionConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ExecutionConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataIntegrationAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}/associations/{DataIntegrationAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::UpdateDataIntegrationAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::UpdateDataIntegrationAssociation - Arguments for method UpdateDataIntegrationAssociation on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataIntegrationAssociation on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method UpdateDataIntegrationAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataIntegrationAssociation.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $UpdateDataIntegrationAssociationResponse =
      $app -integrations->UpdateDataIntegrationAssociation(
      DataIntegrationAssociationIdentifier => 'MyIdentifier',
      DataIntegrationIdentifier            => 'MyIdentifier',
      ExecutionConfiguration               => {
        ExecutionMode         => 'ON_DEMAND',    # values: ON_DEMAND, SCHEDULED
        OnDemandConfiguration => {
          StartTime => 'MyNonBlankString',       # min: 1, max: 255
          EndTime   => 'MyNonBlankString',       # min: 1, max: 255
        },    # OPTIONAL
        ScheduleConfiguration => {
          ScheduleExpression => 'MyNonBlankString', # min: 1, max: 255
          FirstExecutionFrom => 'MyNonBlankString', # min: 1, max: 255
          Object             => 'MyObject',         # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/UpdateDataIntegrationAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataIntegrationAssociationIdentifier => Str

A unique identifier. of the DataIntegrationAssociation resource



=head2 B<REQUIRED> DataIntegrationIdentifier => Str

A unique identifier for the DataIntegration.



=head2 B<REQUIRED> ExecutionConfiguration => L<Paws::AppIntegrations::ExecutionConfiguration>

The configuration for how the files should be pulled from the source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataIntegrationAssociation in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

