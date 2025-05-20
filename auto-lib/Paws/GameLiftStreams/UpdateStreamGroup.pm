
package Paws::GameLiftStreams::UpdateStreamGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has LocationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::LocationConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::UpdateStreamGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::UpdateStreamGroup - Arguments for method UpdateStreamGroup on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStreamGroup on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method UpdateStreamGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStreamGroup.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $UpdateStreamGroupOutput = $gameliftstreams->UpdateStreamGroup(
      Identifier             => 'MyIdentifier',
      Description            => 'MyDescription',    # OPTIONAL
      LocationConfigurations => [
        {
          LocationName     => 'MyLocationName',    # min: 1, max: 20
          AlwaysOnCapacity => 1,                   # OPTIONAL
          OnDemandCapacity => 1,                   # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateStreamGroupOutput->Arn;
    my $AssociatedApplications =
      $UpdateStreamGroupOutput->AssociatedApplications;
    my $CreatedAt          = $UpdateStreamGroupOutput->CreatedAt;
    my $DefaultApplication = $UpdateStreamGroupOutput->DefaultApplication;
    my $Description        = $UpdateStreamGroupOutput->Description;
    my $Id                 = $UpdateStreamGroupOutput->Id;
    my $LastUpdatedAt      = $UpdateStreamGroupOutput->LastUpdatedAt;
    my $LocationStates     = $UpdateStreamGroupOutput->LocationStates;
    my $Status             = $UpdateStreamGroupOutput->Status;
    my $StatusReason       = $UpdateStreamGroupOutput->StatusReason;
    my $StreamClass        = $UpdateStreamGroupOutput->StreamClass;

    # Returns a L<Paws::GameLiftStreams::UpdateStreamGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/UpdateStreamGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A descriptive label for the stream group.



=head2 B<REQUIRED> Identifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.



=head2 LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]

A set of one or more locations and the streaming capacity for each
location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStreamGroup in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

