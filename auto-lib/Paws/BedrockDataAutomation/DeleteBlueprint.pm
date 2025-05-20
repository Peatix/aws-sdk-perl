
package Paws::BedrockDataAutomation::DeleteBlueprint;
  use Moose;
  has BlueprintArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'blueprintArn', required => 1);
  has BlueprintVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'blueprintVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBlueprint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/blueprints/{blueprintArn}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::DeleteBlueprintResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::DeleteBlueprint - Arguments for method DeleteBlueprint on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBlueprint on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method DeleteBlueprint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBlueprint.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $DeleteBlueprintResponse = $bedrock -data-automation->DeleteBlueprint(
      BlueprintArn     => 'MyBlueprintArn',
      BlueprintVersion => 'MyBlueprintVersion',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/DeleteBlueprint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintArn => Str

ARN generated at the server side when a Blueprint is created



=head2 BlueprintVersion => Str

Optional field to delete a specific Blueprint version




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBlueprint in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

