
package Paws::Tnb::ListSolFunctionInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextpage_opaque_marker');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSolFunctionInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnflcm/v1/vnf_instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::ListSolFunctionInstancesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolFunctionInstances - Arguments for method ListSolFunctionInstances on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSolFunctionInstances on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method ListSolFunctionInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSolFunctionInstances.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $ListSolFunctionInstancesOutput = $tnb->ListSolFunctionInstances(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $FunctionInstances = $ListSolFunctionInstancesOutput->FunctionInstances;
    my $NextToken         = $ListSolFunctionInstancesOutput->NextToken;

    # Returns a L<Paws::Tnb::ListSolFunctionInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/ListSolFunctionInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSolFunctionInstances in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

