
package Paws::GameLiftStreams::GetApplication;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::GetApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::GetApplication - Arguments for method GetApplication on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $GetApplicationOutput = $gameliftstreams->GetApplication(
      Identifier => 'MyIdentifier',

    );

    # Results:
    my $ApplicationLogOutputUri =
      $GetApplicationOutput->ApplicationLogOutputUri;
    my $ApplicationLogPaths    = $GetApplicationOutput->ApplicationLogPaths;
    my $ApplicationSourceUri   = $GetApplicationOutput->ApplicationSourceUri;
    my $Arn                    = $GetApplicationOutput->Arn;
    my $AssociatedStreamGroups = $GetApplicationOutput->AssociatedStreamGroups;
    my $CreatedAt              = $GetApplicationOutput->CreatedAt;
    my $Description            = $GetApplicationOutput->Description;
    my $ExecutablePath         = $GetApplicationOutput->ExecutablePath;
    my $Id                     = $GetApplicationOutput->Id;
    my $LastUpdatedAt          = $GetApplicationOutput->LastUpdatedAt;
    my $ReplicationStatuses    = $GetApplicationOutput->ReplicationStatuses;
    my $RuntimeEnvironment     = $GetApplicationOutput->RuntimeEnvironment;
    my $Status                 = $GetApplicationOutput->Status;
    my $StatusReason           = $GetApplicationOutput->StatusReason;

    # Returns a L<Paws::GameLiftStreams::GetApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the application resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

