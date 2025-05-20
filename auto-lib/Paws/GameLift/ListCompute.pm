
package Paws::GameLift::ListCompute;
  use Moose;
  has ComputeStatus => (is => 'ro', isa => 'Str');
  has ContainerGroupDefinitionName => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Location => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCompute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ListComputeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListCompute - Arguments for method ListCompute on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCompute on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ListCompute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCompute.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ListComputeOutput = $gamelift->ListCompute(
      FleetId                      => 'MyFleetIdOrArn',
      ComputeStatus                => 'ACTIVE',           # OPTIONAL
      ContainerGroupDefinitionName =>
        'MyContainerGroupDefinitionNameOrArn',            # OPTIONAL
      Limit     => 1,                                     # OPTIONAL
      Location  => 'MyLocationStringModel',               # OPTIONAL
      NextToken => 'MyNonZeroAndMaxString',               # OPTIONAL
    );

    # Results:
    my $ComputeList = $ListComputeOutput->ComputeList;
    my $NextToken   = $ListComputeOutput->NextToken;

    # Returns a L<Paws::GameLift::ListComputeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ListCompute>

=head1 ATTRIBUTES


=head2 ComputeStatus => Str

The status of computes in a managed container fleet, based on the
success of the latest update deployment.

=over

=item *

C<ACTIVE> -- The compute is deployed with the correct container
definitions. It is ready to process game servers and host game
sessions.

=item *

C<IMPAIRED> -- An update deployment to the compute failed, and the
compute is deployed with incorrect container definitions.

=back


Valid values are: C<"ACTIVE">, C<"IMPAIRED">

=head2 ContainerGroupDefinitionName => Str

For computes in a managed container fleet, the name of the deployed
container group definition.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to retrieve compute resources for.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 Location => Str

The name of a location to retrieve compute resources for. For an Amazon
GameLift Anywhere fleet, use a custom location. For a managed fleet,
provide a Amazon Web Services Region or Local Zone code (for example:
C<us-west-2> or C<us-west-2-lax-1>).



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCompute in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

