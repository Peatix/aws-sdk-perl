
package Paws::Glue::GetBlueprintRun;
  use Moose;
  has BlueprintName => (is => 'ro', isa => 'Str', required => 1);
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlueprintRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetBlueprintRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprintRun - Arguments for method GetBlueprintRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlueprintRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetBlueprintRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlueprintRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetBlueprintRunResponse = $glue->GetBlueprintRun(
      BlueprintName => 'MyOrchestrationNameString',
      RunId         => 'MyIdString',

    );

    # Results:
    my $BlueprintRun = $GetBlueprintRunResponse->BlueprintRun;

    # Returns a L<Paws::Glue::GetBlueprintRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetBlueprintRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintName => Str

The name of the blueprint.



=head2 B<REQUIRED> RunId => Str

The run ID for the blueprint run you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlueprintRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

