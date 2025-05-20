
package Paws::IoT::UpdateCommand;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'commandId', required => 1);
  has Deprecated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deprecated');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCommand');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/commands/{commandId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateCommandResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCommand - Arguments for method UpdateCommand on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCommand on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCommand.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateCommandResponse = $iot->UpdateCommand(
      CommandId   => 'MyCommandId',
      Deprecated  => 1,                         # OPTIONAL
      Description => 'MyCommandDescription',    # OPTIONAL
      DisplayName => 'MyDisplayName',           # OPTIONAL
    );

    # Results:
    my $CommandId     = $UpdateCommandResponse->CommandId;
    my $Deprecated    = $UpdateCommandResponse->Deprecated;
    my $Description   = $UpdateCommandResponse->Description;
    my $DisplayName   = $UpdateCommandResponse->DisplayName;
    my $LastUpdatedAt = $UpdateCommandResponse->LastUpdatedAt;

    # Returns a L<Paws::IoT::UpdateCommandResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateCommand>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

The unique identifier of the command to be updated.



=head2 Deprecated => Bool

A boolean that you can use to specify whether to deprecate a command.



=head2 Description => Str

A short text description of the command.



=head2 DisplayName => Str

The new user-friendly name to use in the console for the command.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCommand in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

