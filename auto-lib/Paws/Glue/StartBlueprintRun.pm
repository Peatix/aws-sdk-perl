
package Paws::Glue::StartBlueprintRun;
  use Moose;
  has BlueprintName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBlueprintRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartBlueprintRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartBlueprintRun - Arguments for method StartBlueprintRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBlueprintRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartBlueprintRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBlueprintRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartBlueprintRunResponse = $glue->StartBlueprintRun(
      BlueprintName => 'MyOrchestrationNameString',
      RoleArn       => 'MyOrchestrationIAMRoleArn',
      Parameters    => 'MyBlueprintParameters',       # OPTIONAL
    );

    # Results:
    my $RunId = $StartBlueprintRunResponse->RunId;

    # Returns a L<Paws::Glue::StartBlueprintRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartBlueprintRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintName => Str

The name of the blueprint.



=head2 Parameters => Str

Specifies the parameters as a C<BlueprintParameters> object.



=head2 B<REQUIRED> RoleArn => Str

Specifies the IAM role used to create the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBlueprintRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

