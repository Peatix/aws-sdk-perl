
package Paws::Pipes::StartPipe;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes/{Name}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::StartPipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::StartPipe - Arguments for method StartPipe on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPipe on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method StartPipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPipe.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $StartPipeResponse = $pipes->StartPipe(
      Name => 'MyPipeName',

    );

    # Results:
    my $Arn              = $StartPipeResponse->Arn;
    my $CreationTime     = $StartPipeResponse->CreationTime;
    my $CurrentState     = $StartPipeResponse->CurrentState;
    my $DesiredState     = $StartPipeResponse->DesiredState;
    my $LastModifiedTime = $StartPipeResponse->LastModifiedTime;
    my $Name             = $StartPipeResponse->Name;

    # Returns a L<Paws::Pipes::StartPipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/StartPipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPipe in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

