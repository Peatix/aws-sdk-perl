
package Paws::Glue::GetBlueprintRuns;
  use Moose;
  has BlueprintName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlueprintRuns');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetBlueprintRunsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprintRuns - Arguments for method GetBlueprintRuns on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlueprintRuns on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetBlueprintRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlueprintRuns.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetBlueprintRunsResponse = $glue->GetBlueprintRuns(
      BlueprintName => 'MyNameString',
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $BlueprintRuns = $GetBlueprintRunsResponse->BlueprintRuns;
    my $NextToken     = $GetBlueprintRunsResponse->NextToken;

    # Returns a L<Paws::Glue::GetBlueprintRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetBlueprintRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintName => Str

The name of the blueprint.



=head2 MaxResults => Int

The maximum size of a list to return.



=head2 NextToken => Str

A continuation token, if this is a continuation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlueprintRuns in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

