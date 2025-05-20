
package Paws::Pipes::DescribePipe;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::DescribePipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::DescribePipe - Arguments for method DescribePipe on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePipe on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method DescribePipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePipe.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $DescribePipeResponse = $pipes->DescribePipe(
      Name => 'MyPipeName',

    );

    # Results:
    my $Arn                  = $DescribePipeResponse->Arn;
    my $CreationTime         = $DescribePipeResponse->CreationTime;
    my $CurrentState         = $DescribePipeResponse->CurrentState;
    my $Description          = $DescribePipeResponse->Description;
    my $DesiredState         = $DescribePipeResponse->DesiredState;
    my $Enrichment           = $DescribePipeResponse->Enrichment;
    my $EnrichmentParameters = $DescribePipeResponse->EnrichmentParameters;
    my $KmsKeyIdentifier     = $DescribePipeResponse->KmsKeyIdentifier;
    my $LastModifiedTime     = $DescribePipeResponse->LastModifiedTime;
    my $LogConfiguration     = $DescribePipeResponse->LogConfiguration;
    my $Name                 = $DescribePipeResponse->Name;
    my $RoleArn              = $DescribePipeResponse->RoleArn;
    my $Source               = $DescribePipeResponse->Source;
    my $SourceParameters     = $DescribePipeResponse->SourceParameters;
    my $StateReason          = $DescribePipeResponse->StateReason;
    my $Tags                 = $DescribePipeResponse->Tags;
    my $Target               = $DescribePipeResponse->Target;
    my $TargetParameters     = $DescribePipeResponse->TargetParameters;

    # Returns a L<Paws::Pipes::DescribePipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/DescribePipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePipe in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

