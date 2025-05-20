
package Paws::Pipes::StopPipe;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopPipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes/{Name}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::StopPipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::StopPipe - Arguments for method StopPipe on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopPipe on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method StopPipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopPipe.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $StopPipeResponse = $pipes->StopPipe(
      Name => 'MyPipeName',

    );

    # Results:
    my $Arn              = $StopPipeResponse->Arn;
    my $CreationTime     = $StopPipeResponse->CreationTime;
    my $CurrentState     = $StopPipeResponse->CurrentState;
    my $DesiredState     = $StopPipeResponse->DesiredState;
    my $LastModifiedTime = $StopPipeResponse->LastModifiedTime;
    my $Name             = $StopPipeResponse->Name;

    # Returns a L<Paws::Pipes::StopPipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/StopPipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopPipe in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

