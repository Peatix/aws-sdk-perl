
package Paws::Discovery::BatchDeleteAgents;
  use Moose;
  has DeleteAgents => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::DeleteAgent]', traits => ['NameInRequest'], request_name => 'deleteAgents' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteAgents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::BatchDeleteAgentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::BatchDeleteAgents - Arguments for method BatchDeleteAgents on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteAgents on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method BatchDeleteAgents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteAgents.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $BatchDeleteAgentsResponse = $discovery->BatchDeleteAgents(
      DeleteAgents => [
        {
          AgentId => 'MyAgentId',    # min: 10, max: 20
          Force   => 1,              # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Errors = $BatchDeleteAgentsResponse->Errors;

    # Returns a L<Paws::Discovery::BatchDeleteAgentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/BatchDeleteAgents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeleteAgents => ArrayRef[L<Paws::Discovery::DeleteAgent>]

The list of agents to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteAgents in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

