
package Paws::SupplyChain::ListInstances;
  use Moose;
  has InstanceNameFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'instanceNameFilter');
  has InstanceStateFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'instanceStateFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/instance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::ListInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListInstances - Arguments for method ListInstances on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstances on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method ListInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstances.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $ListInstancesResponse = $scn->ListInstances(
      InstanceNameFilter => [
        'MyInstanceName', ...    # max: 63
      ],    # OPTIONAL
      InstanceStateFilter => [
        'Initializing',
        ... # values: Initializing, Active, CreateFailed, DeleteFailed, Deleting, Deleted
      ],    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyInstanceNextToken',    # OPTIONAL
    );

    # Results:
    my $Instances = $ListInstancesResponse->Instances;
    my $NextToken = $ListInstancesResponse->NextToken;

    # Returns a L<Paws::SupplyChain::ListInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/ListInstances>

=head1 ATTRIBUTES


=head2 InstanceNameFilter => ArrayRef[Str|Undef]

The filter to ListInstances based on their names.



=head2 InstanceStateFilter => ArrayRef[Str|Undef]

The filter to ListInstances based on their state.



=head2 MaxResults => Int

Specify the maximum number of instances to fetch in this paginated
request.



=head2 NextToken => Str

The pagination token to fetch the next page of instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstances in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

