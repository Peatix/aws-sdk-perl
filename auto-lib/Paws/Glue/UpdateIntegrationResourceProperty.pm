
package Paws::Glue::UpdateIntegrationResourceProperty;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceProcessingProperties => (is => 'ro', isa => 'Paws::Glue::SourceProcessingProperties');
  has TargetProcessingProperties => (is => 'ro', isa => 'Paws::Glue::TargetProcessingProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntegrationResourceProperty');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateIntegrationResourcePropertyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateIntegrationResourceProperty - Arguments for method UpdateIntegrationResourceProperty on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegrationResourceProperty on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateIntegrationResourceProperty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegrationResourceProperty.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateIntegrationResourcePropertyResponse =
      $glue->UpdateIntegrationResourceProperty(
      ResourceArn                => 'MyString128',
      SourceProcessingProperties => {
        RoleArn => 'MyString128',    # min: 1, max: 128
      },    # OPTIONAL
      TargetProcessingProperties => {
        ConnectionName => 'MyString128',     # min: 1, max: 128
        EventBusArn    => 'MyString2048',    # min: 1, max: 2048; OPTIONAL
        KmsArn         => 'MyString2048',    # min: 1, max: 2048; OPTIONAL
        RoleArn        => 'MyString128',     # min: 1, max: 128
      },    # OPTIONAL
      );

    # Results:
    my $ResourceArn = $UpdateIntegrationResourcePropertyResponse->ResourceArn;
    my $SourceProcessingProperties =
      $UpdateIntegrationResourcePropertyResponse->SourceProcessingProperties;
    my $TargetProcessingProperties =
      $UpdateIntegrationResourcePropertyResponse->TargetProcessingProperties;

    # Returns a L<Paws::Glue::UpdateIntegrationResourcePropertyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateIntegrationResourceProperty>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.



=head2 SourceProcessingProperties => L<Paws::Glue::SourceProcessingProperties>

The resource properties associated with the integration source.



=head2 TargetProcessingProperties => L<Paws::Glue::TargetProcessingProperties>

The resource properties associated with the integration target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntegrationResourceProperty in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

