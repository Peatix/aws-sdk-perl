
package Paws::Glue::GetBlueprint;
  use Moose;
  has IncludeBlueprint => (is => 'ro', isa => 'Bool');
  has IncludeParameterSpec => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlueprint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetBlueprintResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprint - Arguments for method GetBlueprint on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlueprint on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetBlueprint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlueprint.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetBlueprintResponse = $glue->GetBlueprint(
      Name                 => 'MyNameString',
      IncludeBlueprint     => 1,                # OPTIONAL
      IncludeParameterSpec => 1,                # OPTIONAL
    );

    # Results:
    my $Blueprint = $GetBlueprintResponse->Blueprint;

    # Returns a L<Paws::Glue::GetBlueprintResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetBlueprint>

=head1 ATTRIBUTES


=head2 IncludeBlueprint => Bool

Specifies whether or not to include the blueprint in the response.



=head2 IncludeParameterSpec => Bool

Specifies whether or not to include the parameter specification.



=head2 B<REQUIRED> Name => Str

The name of the blueprint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlueprint in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

