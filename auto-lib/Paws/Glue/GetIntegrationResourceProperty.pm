
package Paws::Glue::GetIntegrationResourceProperty;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntegrationResourceProperty');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetIntegrationResourcePropertyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetIntegrationResourceProperty - Arguments for method GetIntegrationResourceProperty on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntegrationResourceProperty on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetIntegrationResourceProperty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntegrationResourceProperty.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetIntegrationResourcePropertyResponse =
      $glue->GetIntegrationResourceProperty(
      ResourceArn => 'MyString128',

      );

    # Results:
    my $ResourceArn = $GetIntegrationResourcePropertyResponse->ResourceArn;
    my $SourceProcessingProperties =
      $GetIntegrationResourcePropertyResponse->SourceProcessingProperties;
    my $TargetProcessingProperties =
      $GetIntegrationResourcePropertyResponse->TargetProcessingProperties;

    # Returns a L<Paws::Glue::GetIntegrationResourcePropertyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetIntegrationResourceProperty>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntegrationResourceProperty in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

