
package Paws::Glue::UpdateBlueprint;
  use Moose;
  has BlueprintLocation => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBlueprint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateBlueprintResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateBlueprint - Arguments for method UpdateBlueprint on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBlueprint on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateBlueprint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBlueprint.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateBlueprintResponse = $glue->UpdateBlueprint(
      BlueprintLocation => 'MyOrchestrationS3Location',
      Name              => 'MyOrchestrationNameString',
      Description       => 'MyGeneric512CharString',      # OPTIONAL
    );

    # Results:
    my $Name = $UpdateBlueprintResponse->Name;

    # Returns a L<Paws::Glue::UpdateBlueprintResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateBlueprint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintLocation => Str

Specifies a path in Amazon S3 where the blueprint is published.



=head2 Description => Str

A description of the blueprint.



=head2 B<REQUIRED> Name => Str

The name of the blueprint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBlueprint in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

