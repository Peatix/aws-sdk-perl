
package Paws::IoT::ListCommands;
  use Moose;
  has CommandParameterName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'commandParameterName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCommands');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/commands');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListCommandsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCommands - Arguments for method ListCommands on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCommands on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListCommands.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCommands.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListCommandsResponse = $iot->ListCommands(
      CommandParameterName => 'MyCommandParameterName',    # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      Namespace            => 'AWS-IoT',                   # OPTIONAL
      NextToken            => 'MyNextToken',               # OPTIONAL
      SortOrder            => 'ASCENDING',                 # OPTIONAL
    );

    # Results:
    my $Commands  = $ListCommandsResponse->Commands;
    my $NextToken = $ListCommandsResponse->NextToken;

    # Returns a L<Paws::IoT::ListCommandsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListCommands>

=head1 ATTRIBUTES


=head2 CommandParameterName => Str

A filter that can be used to display the list of commands that have a
specific command parameter name.



=head2 MaxResults => Int

The maximum number of results to return in this operation. By default,
the API returns up to a maximum of 25 results. You can override this
default value to return up to a maximum of 100 results for this
operation.



=head2 Namespace => Str

The namespace of the command. By default, the API returns all commands
that have been created for both C<AWS-IoT> and C<AWS-IoT-FleetWise>
namespaces. You can override this default value if you want to return
all commands that have been created only for a specific namespace.

Valid values are: C<"AWS-IoT">, C<"AWS-IoT-FleetWise">

=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise C<null> to receive the first set of
results.



=head2 SortOrder => Str

Specify whether to list the commands that you have created in the
ascending or descending order. By default, the API returns all commands
in the descending order based on the time that they were created.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCommands in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

