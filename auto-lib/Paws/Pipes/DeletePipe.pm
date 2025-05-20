
package Paws::Pipes::DeletePipe;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::DeletePipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::DeletePipe - Arguments for method DeletePipe on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePipe on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method DeletePipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePipe.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $DeletePipeResponse = $pipes->DeletePipe(
      Name => 'MyPipeName',

    );

    # Results:
    my $Arn              = $DeletePipeResponse->Arn;
    my $CreationTime     = $DeletePipeResponse->CreationTime;
    my $CurrentState     = $DeletePipeResponse->CurrentState;
    my $DesiredState     = $DeletePipeResponse->DesiredState;
    my $LastModifiedTime = $DeletePipeResponse->LastModifiedTime;
    my $Name             = $DeletePipeResponse->Name;

    # Returns a L<Paws::Pipes::DeletePipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/DeletePipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePipe in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

