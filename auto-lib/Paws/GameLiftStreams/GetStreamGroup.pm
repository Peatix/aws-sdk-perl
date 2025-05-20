
package Paws::GameLiftStreams::GetStreamGroup;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::GetStreamGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::GetStreamGroup - Arguments for method GetStreamGroup on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStreamGroup on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method GetStreamGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStreamGroup.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $GetStreamGroupOutput = $gameliftstreams->GetStreamGroup(
      Identifier => 'MyIdentifier',

    );

    # Results:
    my $Arn                    = $GetStreamGroupOutput->Arn;
    my $AssociatedApplications = $GetStreamGroupOutput->AssociatedApplications;
    my $CreatedAt              = $GetStreamGroupOutput->CreatedAt;
    my $DefaultApplication     = $GetStreamGroupOutput->DefaultApplication;
    my $Description            = $GetStreamGroupOutput->Description;
    my $Id                     = $GetStreamGroupOutput->Id;
    my $LastUpdatedAt          = $GetStreamGroupOutput->LastUpdatedAt;
    my $LocationStates         = $GetStreamGroupOutput->LocationStates;
    my $Status                 = $GetStreamGroupOutput->Status;
    my $StatusReason           = $GetStreamGroupOutput->StatusReason;
    my $StreamClass            = $GetStreamGroupOutput->StreamClass;

    # Returns a L<Paws::GameLiftStreams::GetStreamGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/GetStreamGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID value of the stream group resource to retrieve. Format
example: C<sg-1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStreamGroup in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

